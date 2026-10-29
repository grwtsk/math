# Verification target: PNat Find Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a5ee9f02fca62fb93233ac9809c6678d3a2fe64",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a5ee9f02fca62fb93233ac9809c6678d3a2fe64`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [decidablePredExistsNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/decidablepredexistsnat.md) | 29 | `declaration-track:4801600843be49c78fe26be3423633b71a11e07c538643f668672957276fd6a3` |
| 2 | `def` | [findX](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/findx.md) | 36 | `declaration-track:13dc3b36d3fc3f0730856dad888e24bc604422b9925fee78b725a1205a60e445` |
| 3 | `def` | [find](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find.md) | 58 | `declaration-track:c25e166b545914f8b2e79e5ab1adcb7c6191fa8a13ed3a935fd4e5799a767ae2` |
| 4 | `theorem` | [find_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-spec.md) | 61 | `result-track:75be3f54258ec02ac45a0e12c2c333a25255d9048caeaf8c23415a359031d2bf` |
| 5 | `theorem` | [find_min](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-min-source-edition-2.md) | 64 | `result-track:328f50bebaa773fa1a9b61e1c2029353562ae8bd5e5c6820262181d13a9bd04d` |
| 6 | `theorem` | [find_min'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-min.md) | 67 | `result-track:0ad1758b04e137629ed76c5fd3d61958e7da2459940c64dbfb2ca267425b7900` |
| 7 | `theorem` | [find_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-eq-iff.md) | 72 | `result-track:3e7832e9192749787a84f49d7823336d01e51b2b50603a7af53ae82e41787cf4` |
| 8 | `theorem` | [find_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-lt-iff.md) | 80 | `result-track:0c9ad0afb1704a447a1608bccb05094976b93838648706874ec5de75f4477139` |
| 9 | `theorem` | [find_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-le-iff.md) | 85 | `result-track:61f4b9bd26ea889f468b0fff775cebc0a8d0b63bc919d067046c1c6f11f92ccd` |
| 10 | `theorem` | [le_find_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/le-find-iff.md) | 89 | `result-track:3d4882f7fcfd06c3638187651f911df7bca80b0fa6f96661f3bba00503df7324` |
| 11 | `theorem` | [lt_find_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/lt-find-iff.md) | 93 | `result-track:0576095445132beec68f7d7d9f55c1ea1fd94293a8f7e32bcf317767173d6766` |
| 12 | `theorem` | [find_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-eq-one.md) | 97 | `result-track:c6a54592938a648c7c9be3f27f41b2238566dc2a5f91de9b4271adaf678a8482` |
| 13 | `theorem` | [one_le_find](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/one-le-find.md) | 99 | `result-track:81c9eb1a9b4bf7fa8d45f15679d2d7209a8220bb25de01d63257b69c2f5496f5` |
| 14 | `theorem` | [find_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-mono.md) | 101 | `result-track:fbb635d04e16da361735b12100c94c02fe619ea0726eb552928889b76f3ac110` |
| 15 | `theorem` | [find_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-le.md) | 105 | `result-track:d9edf3744496d0f3b3d98e05f0ddb85086653cd1977aa8129784bd3185d4963b` |
| 16 | `theorem` | [find_comp_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatFindNamespaced.lean/declarations/find-comp-succ.md) | 108 | `result-track:aad17512de882ba5e4c8b4ee194c9360dc60462aef52a972bd83d60a0c065bdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ee8320d8490ce008e45cb0036615569418f6aa1064a3ae747ed4d9e3a233cc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
