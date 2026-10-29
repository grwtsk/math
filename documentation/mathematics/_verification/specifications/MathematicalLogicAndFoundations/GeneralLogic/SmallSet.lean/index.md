# Verification target: Small Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "069f25c85eaa0bb0afeec6a3a947b5a8f66a680d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantc5fdd02bec39f845266350e2d9b316b5dbb7c42d37eb74b0d72a64db1ae3aaf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `069f25c85eaa0bb0afeec6a3a947b5a8f66a680d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantc5fdd02bec39f845266350e2d9b316b5dbb7c42d37eb74b0d72a64db1ae3aaf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantc5fdd02bec39f845266350e2d9b316b5dbb7c42d37eb74b0d72a64db1ae3aaf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [small_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-subset.md) | 17 | `result-track:bfe9d7d2447c6a67b07fc8405ad7ec70c96fce42f809691c78aac0d97cfe33fb` |
| 2 | `instance` | [small_powerset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-powerset.md) | 20 | `declaration-track:f45d1009a4a6fe195409dd3fb08156a7551434760333d8484741dcffce5fad40` |
| 3 | `instance` | [small_setProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-setprod.md) | 23 | `declaration-track:749ab1793b4ab14c8f494a890eb4b97e2f038d2502ea4f5d18a43339e8686726` |
| 4 | `instance` | [small_setPi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-setpi.md) | 27 | `declaration-track:7f61b17fa2d7c87858eef49371311cabfd06f21d7a4cf5c7367a38a228146839` |
| 5 | `instance` | [small_range](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-range.md) | 31 | `declaration-track:c07eb7a40c60825eb1a31b2cd27a124a366da4ca2c8440f4ec41a5970e863abd` |
| 6 | `instance` | [small_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-image.md) | 35 | `declaration-track:07bf0124f89fa76ec9f0c7a29d2f84d9bd961fa138aafb2f50d359c805fd4a18` |
| 7 | `instance` | [small_image2](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-image2.md) | 39 | `declaration-track:6b63614ee36632a6f750271cf9bd49e92ab924dd371f78dbd591b6599050e97c` |
| 8 | `theorem` | [small_univ_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-univ-iff.md) | 44 | `result-track:3790c17c4ae29b32fefd61c383b1fe7831e52e95fdbe8bc5a29160633e392a48` |
| 9 | `instance` | [small_univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-univ.md) | 47 | `declaration-track:2977d88388b45e82020836f4201730b400c845d37c88eac890cd6e44a758a734` |
| 10 | `instance` | [small_union](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-union.md) | 50 | `declaration-track:0245023a54a1be9a09b0e5e7f3b548b4c9b196dd5952b3d5ed297cf8f1d2d853` |
| 11 | `instance` | [small_iUnion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-iunion.md) | 55 | `declaration-track:0c18d9770263467397ac53c8ce99f8e6b24d4603af808372946be00721a4c9b4` |
| 12 | `instance` | [small_sUnion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-sunion.md) | 59 | `declaration-track:47ba3ce998e5510740a35fc1a15e461114c395d07a8e3f96d6a1c0abc7566f01` |
| 13 | `instance` | [small_biUnion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-biunion.md) | 63 | `declaration-track:e67d03c811d5f7d564a0ff22b410ba4d79041e6f67c2aed2b98e9c4eddaf7e5d` |
| 14 | `instance` | [small_insert](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-insert.md) | 67 | `declaration-track:0fd7fb07643539a456d61b5ba4cd3010cd5f424c70ea3a93ecb728474a4051c6` |
| 15 | `instance` | [small_diff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-diff.md) | 71 | `declaration-track:e27e7673c62ebe92b8c2ff43a901dd55db2c6e7a666ca54b57f82352c96dc51a` |
| 16 | `instance` | [small_sep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-sep.md) | 74 | `declaration-track:e3bb7a313957d779c041ed63dc41e6e8c05f045acf9cdaa7f4255091661ccdd7` |
| 17 | `instance` | [small_inter_of_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-inter-of-left.md) | 78 | `declaration-track:19364a21d2699919c7b3ee7b6a28839e9abbc4c253e7f0c6abf361e3f1108b94` |
| 18 | `instance` | [small_inter_of_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-inter-of-right.md) | 82 | `declaration-track:da7f6cc12d3980e0e9710953cbf71789dc8f5f46201d1b996a25d0e92e62ecdb` |
| 19 | `theorem` | [small_iInter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-iinter-source-edition-2.md) | 86 | `result-track:f23795c40f14f5eeff1799e330dc99d94e335f1154dbe3f74d31168e8b90b064` |
| 20 | `instance` | [small_iInter'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-iinter.md) | 90 | `declaration-track:20b950c5de003a560f1e8df5f1d4a0944377c79c7738f66b857d55f2b8fdab4f` |
| 21 | `theorem` | [small_sInter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-sinter-source-edition-2.md) | 95 | `result-track:d1f24038efab3a7e8d1db5f3b08589ae3cd6e45d5c3178d70067a27c00589743` |
| 22 | `instance` | [small_sInter'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-sinter.md) | 99 | `declaration-track:2b410bc2167cfaf485ae6a9e4dbbdc457b52a33cdb991b709b3274cb4d613f3f` |
| 23 | `theorem` | [small_biInter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-biinter.md) | 104 | `result-track:6c1a66b06521b9a66379a52109157b649ea34927cfcd08b17f5046cda9a063f7` |
| 24 | `instance` | [small_biInter'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-biinter-source-edition-2.md) | 108 | `declaration-track:f95be491207a647e499dadcb706c51a6e0d632393955c5a0158e5598170e37a5` |
| 25 | `theorem` | [small_empty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-empty.md) | 113 | `result-track:28535a006027f5f56de8f6ec03c746ec5ed422b5758dc1e47b7a99ec74afa4b3` |
| 26 | `theorem` | [small_single](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-single.md) | 116 | `result-track:a44fa1673905db08b828918199ef3c48fa31086261187e7786bb5da238b925ca` |
| 27 | `theorem` | [small_pair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallSet.lean/declarations/small-pair.md) | 119 | `result-track:4e76269abae353c2ae68f31d9410dfd6beb97e9ad5dfc81c5b42562ee68a19c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=495831b1956a4745b4526b4bf9338d4e1eb64214b8b58edbee51f39c12d76db7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantc5fdd02bec39f845266350e2d9b316b5dbb7c42d37eb74b0d72a64db1ae3aaf2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantc5fdd02bec39f845266350e2d9b316b5dbb7c42d37eb74b0d72a64db1ae3aaf2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
