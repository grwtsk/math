# Verification target: Def Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75ac22d55c1ee32ec2598eab975ed97175b7d47d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Def/Variant90a48518a1d2491a40896579010c4f011a007ec32660c07b4cfe3320ce74a7ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75ac22d55c1ee32ec2598eab975ed97175b7d47d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Def/Variant90a48518a1d2491a40896579010c4f011a007ec32660c07b4cfe3320ce74a7ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Def/Variant90a48518a1d2491a40896579010c4f011a007ec32660c07b4cfe3320ce74a7ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac.md) | 37 | `declaration-track:5c1b1e574af02cab23a205332bdd42db4081da6d64945fd7ec5a3b1d85c61ca8` |
| 2 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/instance.md) | 39 | `declaration-track:03481a92e71585d0090ad9542a7c295d69e559543d9de41d608ebdf6b4382403` |
| 3 | `theorem` | [le_dirac_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/le-dirac-apply.md) | 42 | `result-track:077e531682eb5258b2400b17528b00400b39244e1f75bdfd3f227e57c80495be` |
| 4 | `theorem` | [dirac_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-apply-source-edition-2.md) | 46 | `result-track:8378fc782f1f95d1fa61cece848feef84c30a3fce9cbdc6b7322d0f04cd87455` |
| 5 | `theorem` | [dirac_apply_eq_zero_or_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-apply-eq-zero-or-one.md) | 49 | `result-track:f2c0937355d7a208db23bca022ecd28874b1fc66f26b6f3785d2c6b565a4c1b9` |
| 6 | `theorem` | [dirac_apply_ne_zero_iff_eq_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-apply-ne-zero-iff-eq-one.md) | 57 | `result-track:d5dc617fea5033595b4c3804be96808e794af4f0d209febc7a83e2d4eea172b3` |
| 7 | `theorem` | [dirac_apply_ne_one_iff_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-apply-ne-one-iff-eq-zero.md) | 63 | `result-track:64157b12e756f3321e5ffac1fa651f40c0f8db8feae8bb72149fdda3b60219b6` |
| 8 | `theorem` | [dirac_apply_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-apply-of-mem.md) | 69 | `result-track:bfd5d2d7cbb06bcd8b93547cffd6804ea6b97e3642cec21277edfba110b0e630` |
| 9 | `theorem` | [dirac_real_apply_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-real-apply-of-mem.md) | 76 | `result-track:3bd48e99adaff661bddba42abc7321af6eeec7c416ec3d45ee61788a71cb390c` |
| 10 | `theorem` | [dirac_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-apply.md) | 80 | `result-track:3383737af8ebe62354089e0b81aeaa39ecde353ae41a008a1eec20da74eb5a79` |
| 11 | `theorem` | [dirac_real_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-real-apply.md) | 89 | `result-track:795337a2ec615e5f45a7afa7d595e9dfb8e362df0bab26478c9954199c0d1af4` |
| 12 | `lemma` | [dirac_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DefNamespacedPublic.lean/declarations/dirac-ne-zero.md) | 94 | `result-track:1fecacab77b536b83de662f42b17264b3b2b15224fa68b973fd60b9da8c1f80f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6cd63912dfce12bcfb015b02aee17c3fd20a65d4be4efa3feb40adc1717c73d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Def/Variant90a48518a1d2491a40896579010c4f011a007ec32660c07b4cfe3320ce74a7ed.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Def/Variant90a48518a1d2491a40896579010c4f011a007ec32660c07b4cfe3320ce74a7ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
