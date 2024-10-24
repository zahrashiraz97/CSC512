#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
  struct KeyPointsPass : public FunctionPass {
    static char ID;
    KeyPointsPass() : FunctionPass(ID) {}

    // Main run function
    bool runOnFunction(Function &F) override {
      errs() << "Analyzing function: " << F.getName() << "\n";
      
      for (auto &B : F) {  // Loop through each basic block in the function
        for (auto &I : B) { // Loop through each instruction in the block
          
          // Identify branching instructions
          if (BranchInst *BI = dyn_cast<BranchInst>(&I)) {
            if (BI->isConditional()) {
              errs() << "Conditional Branch at Line: " << BI->getDebugLoc().getLine() << "\n";
            }
          }
          
          // Identify function pointer calls
          if (CallInst *CI = dyn_cast<CallInst>(&I)) {
            if (Function *calledFunction = CI->getCalledFunction()) {
              errs() << "Direct call to function: " << calledFunction->getName() << "\n";
            } else {
              errs() << "Function pointer call detected\n";
            }
          }
        }
      }
      
      return false;
    }
  };
}

char KeyPointsPass::ID = 0;
static RegisterPass<KeyPointsPass> X("keypoints", "Key Points Detection Pass", false, false);
