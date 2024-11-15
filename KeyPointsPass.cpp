#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>

using namespace llvm;

namespace {
  struct KeyPointsPass : public FunctionPass {
    static char ID;
    KeyPointsPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      std::ofstream outfile("KeyPointsTrace.txt", std::ios_base::app);
      outfile << "Analyzing function: " << F.getName().str() << "\n";

      for (auto &B : F) {  // Loop through each basic block in the function
        for (auto &I : B) { // Loop through each instruction in the block
          
          // Identify branching instructions
          if (BranchInst *BI = dyn_cast<BranchInst>(&I)) {
            if (BI->isConditional()) {
              if (I.getDebugLoc()) { // Ensure debug information is available
                outfile << "Branch (Conditional) at br_" << BI->getDebugLoc().getLine()
                        << ": File " << I.getDebugLoc()->getFilename().str()
                        << ", Line " << BI->getDebugLoc().getLine() << "\n";
              } else {
                outfile << "Branch (Conditional) at unknown location\n";
              }
            } else {
              outfile << "Unconditional Branch in function: " << F.getName().str() << "\n";
            }
          }

          // Identify function pointer calls
          if (CallInst *CI = dyn_cast<CallInst>(&I)) {
            if (Function *calledFunction = CI->getCalledFunction()) {
              outfile << "Direct call to function: " << calledFunction->getName().str() << "\n";
            } else {
              if (I.getDebugLoc()) {
                outfile << "Function pointer call at line: " << I.getDebugLoc().getLine()
                        << " in File " << I.getDebugLoc()->getFilename().str() << "\n";
              } else {
                outfile << "Function pointer call at unknown location\n";
              }
            }
          }
        }
      }

      outfile.close();
      return false;
    }
  };
}

char KeyPointsPass::ID = 0;
static RegisterPass<KeyPointsPass> X("keypoints", "Key Points Detection Pass", false, false);
