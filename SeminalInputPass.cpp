#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/CFG.h"

using namespace llvm;

namespace {
  struct SeminalInputPass : public FunctionPass {
    static char ID;
    SeminalInputPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      errs() << "Analyzing function: " << F.getName() << "\n";

      for (auto &B : F) {
        for (auto &I : B) {
          // Identify the instructions involving input (e.g., scanf, getc)
          if (CallInst *CI = dyn_cast<CallInst>(&I)) {
            if (Function *calledFunction = CI->getCalledFunction()) {
              StringRef functionName = calledFunction->getName();
              
              if (functionName == "scanf" || functionName == "fscanf" || functionName == "getc") {
                errs() << "Input function call detected: " << functionName << " at line " 
                       << I.getDebugLoc().getLine() << "\n";
                // Now trace the def-use chain from here to key points
                for (auto user : I.users()) {
                  if (Instruction *useInst = dyn_cast<Instruction>(user)) {
                    errs() << "Used in: " << *useInst << "\n";
                  }
                }
              }
            }
          }
        }
      }
      return false;
    }
  };
}

char SeminalInputPass::ID = 0;
static RegisterPass<SeminalInputPass> Y("seminalinput", "Seminal Input Feature Detection Pass", false, false);
