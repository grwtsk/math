# Corpus Carrier Module — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc49ce67c665b8212ee9238d7215e4b71d4e3ad1` · SHA-256 `d0865383930c7b87853127843a69f0328182894fd7e369c65658a1e42bb5e1c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Corpus

/-!
# Formula corpus neighborhood

The four routed modules form the exact import closure needed by
`Algebra/Formula.lean`: carrier, evaluation, semantics, then algebraic laws.
Paths and ordinals remain provenance coordinates, not semantic identities.
-/

namespace Mathematics.Boolean.Formula.Corpus

open Mathematics
open Mathematics.Discovery

def carrierModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 963
  modulePath := "Formula.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "8aa5444c34f71683f63c534f68ee36175f15c4044dea37e2c9b71470eaf6c5d6"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def evaluationModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 966
  modulePath := "Formula/Eval.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "d47e6d44d7ec10bee22d83269125bf13886ae476fbf51f0854df3eb37dbacd1b"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def semanticsModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 968
  modulePath := "Formula/Semantics.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "f8f988b53a0c9e57bf48e44f38672a811ef3f5c3be700180964bbc3b2acdbe7c"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def algebraModule : CorpusModuleAddress :=
  Mathematics.Boolean.Corpus.formulaModule

/-- The dependency-ordered source closure, retained without claiming authority. -/
def dependencyClosure : List CorpusModuleAddress := [
  carrierModule,
  evaluationModule,
  semanticsModule,
  algebraModule
]

@[simp] theorem dependencyClosure_length :
    dependencyClosure.length = 4 := by decide

end Mathematics.Boolean.Formula.Corpus
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d89b377f0448916501f95a7a90651ce8222a66d42d030cea5ecc4b5fa7afaba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variantd0865383930c7b87853127843a69f0328182894fd7e369c65658a1e42bb5e1c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
