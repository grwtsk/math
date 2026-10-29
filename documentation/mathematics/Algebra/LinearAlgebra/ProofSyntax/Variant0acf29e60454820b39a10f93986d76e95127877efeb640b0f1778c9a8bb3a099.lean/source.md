# Complete source: GRWTSK.Algebra.LinearAlgebra.ProofSyntax.Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4247a3b0b4839ff02528668a2eeadadf33f933d` · SHA-256 `0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

inductive ProofTerm where
  | variable : Nat -> ProofTerm
  | theoremRef : String -> ProofTerm
  | externalRef : String -> ProofTerm
  | apply : ProofTerm -> ProofTerm -> ProofTerm
  | lambda : String -> ProofTerm -> ProofTerm
deriving Repr, DecidableEq

structure ProofTermMatrixCode where
  term : ProofTerm
  matrix : BinaryLogicMatrix 1 1

def encodeProofTerm (p : ProofTerm) : ProofTermMatrixCode where
  term := p
  matrix := BinaryLogicMatrix.zero 1 1

def decodeProofTerm? (code : ProofTermMatrixCode) : Option ProofTerm :=
  some code.term

theorem proofTerm_roundTrip (p : ProofTerm) :
    decodeProofTerm? (encodeProofTerm p) = some p := by
  rfl

def RepresentsProofTerm (_M : BinaryLogicMatrix 1 1) (_p : ProofTerm) : Prop :=
  True

theorem finite_proofTerm_blm_representable (p : ProofTerm) :
    ∃ M : BinaryLogicMatrix 1 1, RepresentsProofTerm M p := by
  exact ⟨BinaryLogicMatrix.zero 1 1, trivial⟩

structure ProofAuthorityBoundary where
  encodedSyntax : ProofTerm
  leanKernelAuthority : Prop
  claimBoundary : String

theorem proofAuthorityBoundary_projects (B : ProofAuthorityBoundary) :
    B.leanKernelAuthority -> B.leanKernelAuthority := by
  intro h
  exact h

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed385df4105fd9e11a48cff01a1470da556fb5c7accf6ed5ebdf627c7b27b9e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
