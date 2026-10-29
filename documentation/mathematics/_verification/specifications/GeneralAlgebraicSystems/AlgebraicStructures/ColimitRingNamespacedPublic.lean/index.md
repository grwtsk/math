# Verification target: Colimit Ring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "205069b95fe5c731536039c567caa547510dd232",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `205069b95fe5c731536039c567caa547510dd232`.

Source path: `GRWTSK/Algebra/Ring/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean.json)

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
| 1 | `def` | [DirectLimit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/directlimit.md) | 62 | `declaration-track:203517490ffd1a9bf3be2affd09808b75635169b69ed94b7723293e40b7bcf1f` |
| 2 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/of.md) | 75 | `declaration-track:0b0e5186f30fe08ff0685f1069abf00303cd6d6c36b5691857f7806a6e7a24b4` |
| 3 | `theorem` | [quotientMk_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/quotientmk-of.md) | 85 | `result-track:b2d322ddfda6a0d90fdef0ffb4ae7152da49ab81d9868a758be2f20ead5fbeac` |
| 4 | `theorem` | [of_f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/of-f.md) | 88 | `result-track:ecd339aa88417526895408ab7a4ca5426c4974ec03392ee829ecaaceaff1dbaa` |
| 5 | `theorem` | [exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/exists-of.md) | 93 | `result-track:b7fdc6e4015af3536bc5dfbe48d75b60844cf41121ce599ac2389ccc8e9a2b7a` |
| 6 | `theorem` | [Polynomial.exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/polynomial-exists-of.md) | 107 | `result-track:73011851e830c8947564e97851628a0153c43a1ae893fc93392b212c250c378d` |
| 7 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/induction-on.md) | 126 | `result-track:baf5b9c25be2cfa027cfdd70e022959168d12e3b83b278f798043b2842b20a6a` |
| 8 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/lift.md) | 140 | `declaration-track:23ee586c74faaa6d85190368f67895d7540470dfcd321fa0e0283bf0be5c4a3f` |
| 9 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/lift-of.md) | 157 | `result-track:1590ee4bd4e79949bc4fbf9f5c11bc1ea75ff60d622468b3854d142eb6cc7c87` |
| 10 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/hom-ext.md) | 161 | `result-track:c65d21f08dafa19f936635f1933ed3ba602ef9bf8e9c5fe320a652924b99a470` |
| 11 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/lift-comp-of.md) | 166 | `result-track:f4001d6c5642d36a6dbca6ea1563de3b73edba717b5d1bb0929a31962d7d1687` |
| 12 | `theorem` | [lift_of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/lift-of-source-edition-2.md) | 171 | `result-track:900db8ce47e971279f916e5caba1933253df7e5abc883f7a98baabb78dd8f759` |
| 13 | `lemma` | [lift_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/lift-injective.md) | 174 | `result-track:cc54d6df3acd3b0e1a1da4f74868ffebb323ee68a925c819a36a94b4ec08bf29` |
| 14 | `def` | [ringEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/ringequiv.md) | 191 | `declaration-track:7ac86419cb0ff3ce017ccce7682a3c2eb1d57d73d77dc1ed31708ad983cc24b9` |
| 15 | `theorem` | [ringEquiv_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/ringequiv-of.md) | 198 | `result-track:09deadcfa615a91ef5823322ae70a6ecab0a27f52671a75e662e83b930ec5daa` |
| 16 | `theorem` | [ringEquiv_symm_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/ringequiv-symm-mk.md) | 202 | `result-track:88b4ea59dfb1b291094cd5b2a59a149fc2f1e76f5c99609c033d133077c737af` |
| 17 | `theorem` | [of.zero_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/of-zero-exact.md) | 207 | `result-track:a331bf545ce73b7425a02b62128b4b03d90f29acadb8db73f5325cd15104af0c` |
| 18 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/of-injective.md) | 219 | `result-track:0ccaf25fa1051cde5f4349f461820a16b2da03289a288916e4e1af8b08d8f199` |
| 19 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/map.md) | 239 | `declaration-track:93c4b7d1a53380e598e0b6da4d77f1cd3bdb16c04f9b73e6704c6cc214224e40` |
| 20 | `lemma` | [map_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/map-apply-of.md) | 247 | `result-track:9ae974e585d5a6653a6d7af2685acf3805a0702617f600a8ec63d9da5ca22079` |
| 21 | `lemma` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/map-id.md) | 253 | `result-track:2c7cff5508fa465e10f14845726aa22e0586670e767b98f73d624a5e66d88645` |
| 22 | `lemma` | [map_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/map-comp.md) | 257 | `result-track:1e71a3d631777c46959f26d8230c34706576f84cb24312db33d3c35bf3599b2c` |
| 23 | `def` | [congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/congr.md) | 273 | `declaration-track:2c6479d25e451e6678feee7e874963356891bd72d6816ca1a9da2f4271da2251` |
| 24 | `lemma` | [congr_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/congr-apply-of.md) | 285 | `result-track:3b19a3e338bff579c78b50bdd543f03ccef24586955eecb1995f436ac8696ca0` |
| 25 | `lemma` | [congr_symm_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/congr-symm-apply-of.md) | 291 | `result-track:e0d6f89ab284b172842df09e6786ed1c9cbe54a6d0e2a0ec2926e6058a5dc992` |
| 26 | `instance` | [nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/nontrivial.md) | 313 | `declaration-track:2251e38194b617d790f6d607d6a99f21cec2ef5f06ac33e4a6b2beadf0eb516b` |
| 27 | `theorem` | [exists_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/exists-inv.md) | 323 | `result-track:c1796025d746e9d49b4da57f166120e6aaef621ac8771b8667c629b897288d1c` |
| 28 | `def` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/inv.md) | 335 | `declaration-track:23088b83e35db70624cc02df60eccebe0ebc8d1b7d35af32ae7c61d1eba555cb` |
| 29 | `theorem` | [mul_inv_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/mul-inv-cancel.md) | 338 | `result-track:e0ba323cd294afbbd46724289d9a296a15500f7bfad17abd8b05d38c937b1369` |
| 30 | `theorem` | [inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/inv-mul-cancel.md) | 341 | `result-track:256dfad7e5a1668fc0ca780f49425c568b8b9b17f812dbba531f6a241147a6cd` |
| 31 | `abbrev` | [field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRingNamespacedPublic.lean/declarations/field.md) | 346 | `declaration-track:6ababdac6f85c7a95d71c8d207b09aa9504c7f41c2c4dc3c5bb51cb3536ffc33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcbbcd3bd2f059beebac083fb8ab5914573e716ea492d57703c2f34795686679 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ring/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
