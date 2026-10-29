# Verification target: DFinsupp Submonoid Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32d82a497b8be3413fdc4e69b8ca608ba834d60a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32d82a497b8be3413fdc4e69b8ca608ba834d60a`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dfinsuppProd_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/declarations/dfinsuppprod-mem.md) | 42 | `result-track:1667b338db75cf2552d2d761190499adca7c59816bc30d4b0fd6394b2c78d25f` |
| 2 | `theorem` | [dfinsuppSumAddHom_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/declarations/dfinsuppsumaddhom-mem.md) | 50 | `result-track:5b473c9d0c2bf70e3735ad58485123aa6399b04fc37f6460cd60a7ac862bdb2b` |
| 3 | `theorem` | [AddSubmonoid.iSup_eq_mrange_dfinsuppSumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/declarations/addsubmonoid-isup-eq-mrange-dfinsuppsumaddhom.md) | 62 | `result-track:6eba5aaec0e281e352619b85e37d0c88057201155e9a1b0f290d01090c33b764` |
| 4 | `theorem` | [AddSubmonoid.bsupr_eq_mrange_dfinsuppSumAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/declarations/addsubmonoid-bsupr-eq-mrange-dfinsuppsumaddhom.md) | 76 | `result-track:b9871335920ea0d089086bc5b2e81276a1e16026eee6b27a41642ec28191ad79` |
| 5 | `theorem` | [AddSubmonoid.mem_iSup_iff_exists_dfinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/declarations/addsubmonoid-mem-isup-iff-exists-dfinsupp-source-edition-2.md) | 95 | `result-track:e6b1b288379dd9a1e5309c08971b6293529af3f83cf1d8f4649d805c195b43d0` |
| 6 | `theorem` | [AddSubmonoid.mem_iSup_iff_exists_dfinsupp'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/declarations/addsubmonoid-mem-isup-iff-exists-dfinsupp.md) | 100 | `result-track:5c3dcfd118400ac63a4c133aa88e67db7a2dd600b48328aa0b943e6ee0f26dbd` |
| 7 | `theorem` | [AddSubmonoid.mem_bsupr_iff_exists_dfinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSubmonoidNamespaced.lean/declarations/addsubmonoid-mem-bsupr-iff-exists-dfinsupp.md) | 107 | `result-track:61a1c3569e2f46eab7cc1ef652142de053f48778808197fa594fe88d3476b2bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb7b5744b57a677e6f67727a0ac26e24cf5fda4f61d51f05cff83a33aa3c2666 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
