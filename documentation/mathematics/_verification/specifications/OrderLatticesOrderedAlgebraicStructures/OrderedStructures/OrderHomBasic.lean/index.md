# Verification target: Order Hom Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "643c40e39d7c818d79a2b06b9d47b15d35476037",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `643c40e39d7c818d79a2b06b9d47b15d35476037`.

Source path: `GRWTSK/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonnegHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/nonneghomclass.md) | 76 | `declaration-track:2ed5fe7e8234e168bb733627077fab9032dd409078ce2a201965bf4e0d31d88a` |
| 2 | `class` | [SubadditiveHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/subadditivehomclass.md) | 81 | `declaration-track:4f1e94bd7ea3d9ea61016fd543097bebc3ec3e8b43bc53518e929831e00f6449` |
| 3 | `class` | [SubmultiplicativeHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/submultiplicativehomclass.md) | 88 | `declaration-track:6a5da0604061f84511b2ae0fe65c99553ab9f1beafb30ef5597604bafd7c85bd` |
| 4 | `class` | [MulLEAddHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/mulleaddhomclass.md) | 95 | `declaration-track:adcb58941845efcfe54b9923dc9c634dd1a6275025c0a46edc6e723c2aa47dc8` |
| 5 | `class` | [NonarchimedeanHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/nonarchimedeanhomclass.md) | 101 | `declaration-track:0c40e5f5b9800360e7980eefc8a8a54b96c2500619ad7a21558ea2ba85eb2af1` |
| 6 | `theorem` | [le_map_mul_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/le-map-mul-map-div.md) | 121 | `result-track:ecee1c15adad1e0bae8f040f8a08434237d8fb68036875ebcc846673748ee933` |
| 7 | `theorem` | [le_map_add_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/le-map-add-map-div.md) | 126 | `result-track:97283c1fe3944cf0e3388bfc9a86f7ba44f975fa66a489e6236d1e169f4aeb6e` |
| 8 | `theorem` | [le_map_div_mul_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/le-map-div-mul-map-div.md) | 131 | `result-track:94bd572b532f3a82857c9974991022ca90b8b3f448cb40377619552fcbafd9c5` |
| 9 | `theorem` | [le_map_div_add_map_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/le-map-div-add-map-div.md) | 136 | `result-track:26ad8bc6d4238cef5585090437869a9f7011e1653eeea46350aaf331ff4a1aac` |
| 10 | `def` | [evalMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/evalmap.md) | 146 | `declaration-track:9cdc70199580ae27414d1466586a7c931d14b4e4014250cd347e5c2916974f49` |
| 11 | `class` | [AddGroupSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/addgroupseminormclass.md) | 161 | `declaration-track:e145d31994cf9e792811f581b0e10079b373957c71e7febcea78656237ce19f1` |
| 12 | `class` | [GroupSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/groupseminormclass.md) | 173 | `declaration-track:d12a6bfe181fcb0da91060ab9155dfab220c8d99d06134a6f061621f817be82f` |
| 13 | `class` | [AddGroupNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/addgroupnormclass.md) | 185 | `declaration-track:010e8cf5e39844a00f44d25591f753ee8c96958f5009b6d55e0692f0f0b10e05` |
| 14 | `class` | [GroupNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/groupnormclass.md) | 195 | `declaration-track:999df3cda6be9a4c86d081225e2da826da987f0f475e9c1a7de46fe5262cb362` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/instance-source-edition-5.md) | 218 | `declaration-track:e5d3295dd0a20409c3e66194b8a7c5d68ad78d817252ec9edf8baf3f3d653e7a` |
| 16 | `theorem` | [map_div_le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/map-div-le-add.md) | 227 | `result-track:ee099f480f2e75210e4a1f20a4ee1daab6c6be2c87e31e525c07c31df699b732` |
| 17 | `theorem` | [map_div_rev](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/map-div-rev.md) | 232 | `result-track:b2b69fde2485aa75a437d6ae82762f2b80bfe9a64e39af3408416b5a99e642c9` |
| 18 | `theorem` | [le_map_add_map_div'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/le-map-add-map-div-source-edition-2.md) | 235 | `result-track:c664b14fda6d966d3930af4fd6bf74fdb055112e899335463f7d3776e76251df` |
| 19 | `theorem` | [abs_sub_map_le_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/abs-sub-map-le-div.md) | 241 | `result-track:b6b0109d0d693e03fbc91ee91d0f113a1889cdea04cded169856d50c555367c7` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/instance.md) | 249 | `declaration-track:300e7bc2f0af762092d86b622084163d633342153052ab6d42fcf4920fe2c3be` |
| 21 | `theorem` | [map_eq_zero_iff_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/map-eq-zero-iff-eq-one.md) | 263 | `result-track:9f0a090cc68cacaa9bea55e838a19a907ddd5f20b20ccafc37317a9421d9d67a` |
| 22 | `theorem` | [map_ne_zero_iff_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/map-ne-zero-iff-ne-one.md) | 269 | `result-track:23df1f1e71a282880220a089be8482cff7e4accbd024c93ad0b732f60971e2e6` |
| 23 | `theorem` | [map_pos_of_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/map-pos-of-ne-one.md) | 275 | `result-track:7a1b7fb0e9193772bfbd3c1a94f4749bf446a7339d783b40c0a224a75f5ce5e1` |
| 24 | `class` | [RingSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/ringseminormclass.md) | 286 | `declaration-track:081321cfe29dc0fc8135d7d2c89a3cee6e196ef6265dc1afeb599dc2ed0464de` |
| 25 | `class` | [RingNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/ringnormclass.md) | 293 | `declaration-track:e6ae5742a22648e3dc7eee1563fb4da71fe50d630aba2a34222b108124d3cca1` |
| 26 | `class` | [MulRingSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/mulringseminormclass.md) | 301 | `declaration-track:c1b21e373c4617d9c78b14217d1ec1bbd2665e0757e8b89fb3d75577575dcde7` |
| 27 | `class` | [MulRingNormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/mulringnormclass.md) | 313 | `declaration-track:597d57cf74ae9de5ab5085d82fb3709701d2eb9bfac70cbdab95e296dad9be50` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/instance-source-edition-2.md) | 319 | `declaration-track:6d2f32eefaf7c3a01e804f893d6a77f5b1aff6b0a1330afb44c0740edf5c566d` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/instance-source-edition-3.md) | 325 | `declaration-track:9898895d3764bf6041cfe3196fa07089314bf60b85df290605c05ebba619f4da` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderHomBasic.lean/declarations/instance-source-edition-4.md) | 330 | `declaration-track:d50f68c88beba31c1dd071a14f93dcf83d52c08b1ce512f8dea9a2860a32e47d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb75435c0d042d22b1c6b4e72a6ea1dfcad24b4166df990b41c22d70e80be164 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
