#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/CFG.h"
#include <fstream>

using namespace llvm;

namespace {
  struct SeminalInputPass : public FunctionPass {
    static char ID;
    SeminalInputPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      std::ofstream outfile("SeminalInputFeatures.txt", std::ios_base::app);
      outfile << "Analyzing function for seminal input features: " << F.getName().str() << "\n";

      for (auto &B : F) {
        for (auto &I : B) {
          // Identify input instructions (e.g., scanf, getc, fgets)
          if (CallInst *CI = dyn_cast<CallInst>(&I)) {
            if (Function *calledFunction = CI->getCalledFunction()) {
              StringRef functionName = calledFunction->getName();
              
              if (isInputFunction(functionName)) {
                outfile << "Input function detected: " << functionName.str() 
                        << " at line " << I.getDebugLoc().getLine() << "\n";

                // Track influence from this input instruction
                for (auto user : I.users()) {
                  if (Instruction *useInst = dyn_cast<Instruction>(user)) {
                    trackInfluence(useInst, outfile);
                  }
                }
              }
            }
          }
        }
      }
      outfile.close();
      return false;
    }

    bool isInputFunction(StringRef functionName) {
      return functionName == "scanf" || functionName == "fscanf" || functionName == "getc" || 
             functionName == "fgets" || functionName == "fread";
    }

    void trackInfluence(Instruction *inst, std::ofstream &outfile, int depth = 0) {
      // Limit recursion depth to avoid infinite loops in complex graphs
      if (depth > 10) return;

      // Check if this instruction influences branching or function pointers
      if (auto *branchInst = dyn_cast<BranchInst>(inst)) {
        if (branchInst->isConditional()) {
          outfile << "  Input variable affects conditional branch at line " 
                  << branchInst->getDebugLoc().getLine() << "\n";
        }
      } else if (auto *callInst = dyn_cast<CallInst>(inst)) {
        if (!callInst->getCalledFunction()) {
          outfile << "  Input variable affects function pointer call at line " 
                  << callInst->getDebugLoc().getLine() << "\n";
        }
      }

      // Log variable details
      if (inst->hasName()) {
        outfile << "  Tracing variable: " << inst->getName().str() 
                << " in instruction at line " << inst->getDebugLoc().getLine() << "\n";
      }

      // Recursively track influence on further dependent instructions
      for (auto *user : inst->users()) {
        if (Instruction *userInst = dyn_cast<Instruction>(user)) {
          trackInfluence(userInst, outfile, depth + 1);
        }
      }
    }
  };
}

char SeminalInputPass::ID = 0;
static RegisterPass<SeminalInputPass> Y("seminalinput", "Seminal Input Feature Detection Pass", false, false);
