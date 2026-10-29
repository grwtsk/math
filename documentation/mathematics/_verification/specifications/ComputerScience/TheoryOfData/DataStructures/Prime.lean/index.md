# Verification target: Prime

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6eed9ee54abf02847cd4ce5c2948e616412cbf6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6eed9ee54abf02847cd4ce5c2948e616412cbf6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.ZNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minFacAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/minfacaux.md) | 35 | `declaration-track:600d00104f83359a4380de09c3633f9ab27617fe2e65dadc17276d622f1632f6` |
| 2 | `theorem` | [minFacAux_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/minfacaux-to-nat.md) | 40 | `result-track:17ff13722fd3d285744ec87a50156613d02ba670dacad144badfc620e502c43a` |
| 3 | `def` | [minFac](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/minfac.md) | 53 | `declaration-track:1c509bd67e7b014e0f7ebd843caeaf7449904b49d19fa1ac4a5519a1c13702cd` |
| 4 | `theorem` | [minFac_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/minfac-to-nat-source-edition-2.md) | 59 | `result-track:e0a7fd245fc50045897d6b6e407b547345b0ffce8e34a50a08fe9d935c2b56a4` |
| 5 | `def` | [Prime](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/prime-source-edition-2.md) | 80 | `declaration-track:9382ff28beedc5d611f3546542b93da0b87c8a23c3962f4ced331ffc5db8fd79` |
| 6 | `instance` | [decidablePrime](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/decidableprime-source-edition-2.md) | 83 | `declaration-track:baecb8e1187fff020a4715de53e46d56c5f6c831738f153b7c71f4c0f0e6d8e7` |
| 7 | `def` | [minFac](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/minfac-source-edition-2.md) | 105 | `declaration-track:378e3b650830e43074df06ca6d65924a493ced1a1aa1a411e2a36f7d90ec620a` |
| 8 | `theorem` | [minFac_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/minfac-to-nat.md) | 110 | `result-track:2b64c6ede9d6608ee54ca8fa64d746b297f6bb2ad7e34c0d061b5d3f025d0169` |
| 9 | `def` | [Prime](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/prime.md) | 116 | `declaration-track:442dbc9e9279e8616796aa86839f89ee01c4c9814ca3a86ba91690f921baa49c` |
| 10 | `instance` | [decidablePrime](../../../../../../ComputerScience/TheoryOfData/DataStructures/Prime.lean/declarations/decidableprime.md) | 119 | `declaration-track:686873d3380a883c860ed94c937426babb6c97dc14c4cd9eaf679fccf57b32eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eda2911be265a2bbaa9bea4f11662de6903fc261b021fd7a7026c557ea69d341 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
