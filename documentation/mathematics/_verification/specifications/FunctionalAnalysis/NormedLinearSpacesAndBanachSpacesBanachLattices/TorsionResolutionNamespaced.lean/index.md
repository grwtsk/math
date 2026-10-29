# Verification target: Torsion Resolution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "912d25d60403a91c81aba3bee53b325dbff8f447",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `912d25d60403a91c81aba3bee53b325dbff8f447`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CycleTorsionModel](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/cycletorsionmodel.md) | 26 | `declaration-track:7d1bfd25689ca57cd7c92bcf0eadcd9f2941461cdf14edd20894a102d1ff0319` |
| 2 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/instance.md) | 46 | `declaration-track:4531002d00501cdf518620122628f22fb9916e8fcc5f17d7ce4a3f37abf19282` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/instance-source-edition-2.md) | 49 | `declaration-track:834255f92e8c24255b0bef9f7c28e7b3025723c5ff8e7733190551ef8be9effd` |
| 4 | `def` | [energy](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/energy.md) | 53 | `declaration-track:c67d880f32ce728120b793f1cae8242c05f0ec112b5a9f3406e8bfa0e840a890` |
| 5 | `def` | [Resolved](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/resolved.md) | 57 | `declaration-track:3eccb047f83bcece6f7d43fa4833c0b0dc720bbc1c0f18b70fd5e64c5aae144b` |
| 6 | `theorem` | [defect_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/defect-apply.md) | 62 | `result-track:e452348f0127c22ea6251d002ae7179f4f4bece964c8049752afc809efdfc1db` |
| 7 | `theorem` | [defect_eq_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/defect-eq-zero-iff.md) | 71 | `result-track:c9cb33820d6884b7e5eb9bd91ae5d88834ef9afdd6833a6385ffc101dd34ef2b` |
| 8 | `theorem` | [energy_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/energy-nonnegative.md) | 81 | `result-track:83349c1bdb8ee94b6cb323fcbe82cbce989ad802c4d38d8a7dab2f22614e421a` |
| 9 | `theorem` | [reference_is_resolved](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/reference-is-resolved.md) | 89 | `result-track:0ce5a78503724817fcc1fcc9d214eeae010582b3b5bdf6956fd1df3b5006f597` |
| 10 | `theorem` | [energy_eq_zero_of_resolved](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/energy-eq-zero-of-resolved.md) | 95 | `result-track:fec1425528dcdc991729077b3108c0032f365b6ffc84151354759ca1f6ff5fac` |
| 11 | `inductive` | [TorsionResolutionStatus](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/torsionresolutionstatus.md) | 108 | `declaration-track:5ed04aa45734bd9733031d931dbf5145defe58b13367679581fe3420d3ec538e` |
| 12 | `structure` | [TorsionResolutionFlow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/torsionresolutionflow.md) | 119 | `declaration-track:ea70feee903750f6d07f6e35536e7ba454155b0c08bbaa2d51d9658df6fcb34f` |
| 13 | `structure` | [CycleTorsionObstruction](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TorsionResolutionNamespaced.lean/declarations/cycletorsionobstruction.md) | 132 | `declaration-track:aa6f9b8965689a09d01970eab6a01e827e95e3fd6c392fd6914cc317cd1a0193` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c0bcef8120193aed1fa8b667fb8a5b73638b9d3503a9f898558ebd08a017138 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
