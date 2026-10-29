# Verification target: Basic Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8198414eb01368da4ad673af4d18e3fdd79dda9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BasicBasicSourceEdition1.lean/index.md) · [Full source](../../../../Combinatorics/BasicBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8198414eb01368da4ad673af4d18e3fdd79dda9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Rat` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CapacityDigest](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/capacitydigest.md) | 16 | `declaration-track:e0b4639bc5786c9fbd5815d23162a58d163ea37f44295569bd1d0f998a25222b` |
| 2 | `structure` | [BalanceDigest](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/balancedigest.md) | 20 | `declaration-track:e68997f0e2fdbab7bd294d4fa7fa847853e19ba98f54b23e6b3dfa0ea90b739c` |
| 3 | `structure` | [RealizationDigest](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/realizationdigest.md) | 24 | `declaration-track:1a9fed28ebd6cb4ccb17a08cadf29af7002287f8493177f0b2ff3d06573005fc` |
| 4 | `structure` | [ReconstructionDigest](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/reconstructiondigest.md) | 28 | `declaration-track:2621895d7592b8916909303c08152a46db32527af6d1389b4e8f7140c3be4aa8` |
| 5 | `structure` | [ArithmeticCutId](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/arithmeticcutid.md) | 32 | `declaration-track:1adba28913243c5929f1f48b90bd5e732da6be3b4f6e38d1c93c0bba826638cc` |
| 6 | `structure` | [CompressionId](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/compressionid.md) | 36 | `declaration-track:f8239a65a522bb592c1bcaa4618853716ee7ca637948bdcf971bb705e85b1db4` |
| 7 | `structure` | [CertificateDigest](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/certificatedigest.md) | 40 | `declaration-track:3bf622771c18676fa3e2dd4fdfdb456b09af7b59882177ddbeaf5132862c74c7` |
| 8 | `inductive` | [CertificateStatus](../../../../Combinatorics/BasicBasicSourceEdition1.lean/declarations/certificatestatus.md) | 44 | `declaration-track:67506426675a7f0cbcf83e86d00339a1bd21a09e8033245286d3661dcba31b2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=350a811a39978fcc18513c6da5166403b3189d9d49cf7fae24d8692b607eed81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
