# Verification target: DPMorphism Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2e69c13afab0939b8b89c1950a7496626ba17df",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DPMorphismPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DPMorphismPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2e69c13afab0939b8b89c1950a7496626ba17df`.

Source path: `GRWTSK/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDPMorphism](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/isdpmorphism-source-edition-2.md) | 62 | `declaration-track:e2dd8ae4773aea0493050241c9bf1bb170771b26d5753efbfd5f4d20dc2682dc` |
| 2 | `lemma` | [isDPMorphism_def](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/isdpmorphism-def.md) | 70 | `result-track:b9c3d8a4f6d2dd439dd4492ccde921a18bac6854618070c160ac34925e111aeb` |
| 3 | `lemma` | [isDPMorphism_iff](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/isdpmorphism-iff.md) | 74 | `result-track:6328a9283a39987b574d85e359a8f7d709c71c939c429e296b305466a5e58fc6` |
| 4 | `theorem` | [map_dpow](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/map-dpow.md) | 87 | `result-track:93ac591f59045401d15df36bab15a38df74213feced550f5e3f3586da44c3260` |
| 5 | `theorem` | [comp](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/comp-source-edition-2.md) | 90 | `result-track:60dff74ab314e5cbffb8e9884541551bfc7c8d69ed4ecc564847201648657cc5` |
| 6 | `structure` | [DPMorphism](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/dpmorphism.md) | 101 | `declaration-track:5568f4fa9244e9b98b8125cbad220bd96ace77b5a5ca1ceeee58164997d83085` |
| 7 | `instance` | [instFunLike](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/instfunlike.md) | 112 | `declaration-track:ba692fe02cc9d3b0bf5f5a8fc85a965818669a6f472d162db88115f46936d34c` |
| 8 | `instance` | [coe_ringHom](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/coe-ringhom.md) | 118 | `declaration-track:cccf4bcabb85e35cdbcf4170cda11eb3ed5ed296b11afa3c27425ed60192384d` |
| 9 | `theorem` | [coe_toRingHom](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/coe-toringhom.md) | 120 | `result-track:a10a0ba1228c02c58fb289422f8402ea774c48758e37ce92a687f9e1511dd3bc` |
| 10 | `lemma` | [toRingHom_apply](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/toringhom-apply.md) | 122 | `result-track:b5b31132fd61b31a3451206c6e0070fe5f77e5c39afb9b240fa55bbc8cfd2f17` |
| 11 | `lemma` | [isDPMorphism](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/isdpmorphism.md) | 126 | `result-track:4ce47d23e78487d792ae18bd12abc976d1a315d860d7d44bb8f8bee1c7791df6` |
| 12 | `def` | [mk'](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/mk.md) | 131 | `declaration-track:aa954a857823d7d2793c3cfab6f9cad3154d10485f41f9ca46e13f509fbab76b` |
| 13 | `def` | [_root_.DividedPowers.ideal_from_ringHom](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/root-dividedpowers-ideal-from-ringhom.md) | 140 | `declaration-track:c887552622f0fe449ce998868f2ddf4694c8112dda3612cf1f8ec249f358737a` |
| 14 | `def` | [fromGens](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/fromgens.md) | 165 | `declaration-track:a6898253ad42168ad7164725f2c06d40a2d5a4dbc2b7f9d150f8b632db2ae757` |
| 15 | `def` | [id](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/id.md) | 178 | `declaration-track:ad53eb1f5bd2ede79138c8f4ff419969c2f503e1fd9f600ebfae04c98a972d14` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/instance.md) | 183 | `declaration-track:1e8a90aa07c6b21c3bf04facfd0e477117e203eaf1645d938d3ba527d8c39d71` |
| 17 | `theorem` | [fromGens_coe](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/fromgens-coe.md) | 185 | `result-track:d518cd0f6f2407201f261491d1d523d54722c599a7ec23c0140bba3e4c71b9fe` |
| 18 | `theorem` | [on_span](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/on-span.md) | 198 | `result-track:522d60d1c00bd1b0b9fb1e55f5948c7b37b6c1ac6558019270b567f185703600` |
| 19 | `theorem` | [of_comp](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/of-comp.md) | 207 | `result-track:f5562ce16c131b730ff363ecb9b138375cd915ce312fcc2ff65ad54652d26cca` |
| 20 | `def` | [comp](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/comp.md) | 224 | `declaration-track:1f09b683425753bfe9e19113a24312646aedd473d74a0109f04cc493d6a766e2` |
| 21 | `lemma` | [comp_toRingHom](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/comp-toringhom.md) | 228 | `result-track:2b8b97d9326f5f216c89da1de2858058cdb0a5e57ffbf9cc0cc7a50128d25bb1` |
| 22 | `theorem` | [dpow_comp_from_gens](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/dpow-comp-from-gens.md) | 238 | `result-track:e5026ffcdc991349a56d66a95291d10c4c7c768416ea6b0f3e653af41c30f5f6` |
| 23 | `theorem` | [dpow_eq_from_gens](../../../../CommutativeAlgebra/DPMorphismPublic.lean/declarations/dpow-eq-from-gens.md) | 246 | `result-track:67de0bb13e36948b41b4aef4363c4ab5ae21952e967055ed785145591b1d2c89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9fb2d30c7fd74f39168779edeeab0d6ae0275ecf919b319dd2c4d30fd4e8a41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean","GRWTSK/_verification/specifications/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
