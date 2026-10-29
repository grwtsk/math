# Equational Theories Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9950a0b56fbb94ad27566b52b7b34c0c22016cc3` · SHA-256 `33200dc48da17387c87db93bc25a2bc72fb3f16535b173b9ae98ca495ab99e0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Tao Equational Theories finite-search profile -/

namespace Mathematics.Projects.Tao

inductive ImplicationAuthority
  | leanProved
  | certifiedTransitive
  | countermodelDisproved
  | externalProverCandidate
  | conjectured
  | unresolved
  deriving DecidableEq, Repr

structure ImplicationRecord where
  sourceEquationId : StableId
  targetEquationId : StableId
  authority : ImplicationAuthority
  derivationPath : List StableId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

structure EquationalTheoriesProfile where
  base : Projects.ProjectProfile
  equationIds : List StableId
  dualityRecordIds : List StableId
  implications : List ImplicationRecord
  countermodelIds : List StableId
  closureArtifactIds : List StableId
  reductionArtifactIds : List StableId
  externalProverArtifactIds : List StableId
  generationScriptIds : List StableId
  dashboardArtifactIds : List StableId
  proofBasisIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a61f460bf041b01b40c537f963d994fd8025da4346de0779e3a4735804a4965 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EquationalTheoriesProfile/Variant33200dc48da17387c87db93bc25a2bc72fb3f16535b173b9ae98ca495ab99e0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
