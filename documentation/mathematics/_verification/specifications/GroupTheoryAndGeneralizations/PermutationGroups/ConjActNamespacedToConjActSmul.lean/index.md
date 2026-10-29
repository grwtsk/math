# Verification target: Conj Act Namespaced To Conj Act Smul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e22c0ea6088f83f7dcd1f83ebb70b6b5fa1b4753",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e22c0ea6088f83f7dcd1f83ebb70b6b5fa1b4753`.

Source path: `GRWTSK/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/conjact.md) | 48 | `declaration-track:2512fa97b57ff94921c5cdcb781fccbae871ea3a84221a9c11b94a249497baa3` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:647d46e738904bf1aeb913fd7ec2e4b7d1ce4222ca2604030627087ba7aa2ed0` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/instance-source-edition-5.md) | 59 | `declaration-track:d14ca128324e9058eaf3270639b6e35acd22e1540227b06261879579f14daf53` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/instance.md) | 61 | `declaration-track:2b557bd659c3de8e14871bf44532724e226a7e411d75f3125b21d11a46f800aa` |
| 5 | `theorem` | [card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/card.md) | 64 | `result-track:e0ca2477fb8fdffb4f0d739bffe77360f43939419bd3d37e9ba7dc59d571dd28` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/instance-source-edition-4.md) | 71 | `declaration-track:b42589d313f6567d70dbb83dffa27303547347edaa9a51fdfaf642c8a5e54a31` |
| 7 | `def` | [ofConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/ofconjact.md) | 75 | `declaration-track:969755adf19c4b94671c7c1946bf3d26ccc95aad5336dd5123a3ca72ef3c2497` |
| 8 | `def` | [toConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/toconjact.md) | 83 | `declaration-track:b2987615d868d8d469a5e15573d26b2f70dee1bfa9de426224f607b65a51cfdf` |
| 9 | `def` | [rec](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/rec.md) | 88 | `declaration-track:1db25e197bfbd67a6e1c8bf137a9f6418cb5bf41a7d2c7f195de618cdb3069cd` |
| 10 | `theorem` | [«forall»](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/forall.md) | 92 | `result-track:d58815d44c2c75fe2ab6d800c8020cb6bfef197892aab7b0648f41e8148f1087` |
| 11 | `theorem` | [of_mul_symm_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/of-mul-symm-eq.md) | 96 | `result-track:93824b55a2f0903cc3f4db5072f8b31db231e17fa7a78123f5da3dab48039ca6` |
| 12 | `theorem` | [to_mul_symm_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/to-mul-symm-eq.md) | 100 | `result-track:a0e47a85334202e6a610e0412e12bfaf0bbaf31f60c0cf7a58c70e85529b5d00` |
| 13 | `theorem` | [toConjAct_ofConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/toconjact-ofconjact.md) | 104 | `result-track:9c7b3ef9bf2ff61a3d2a276077b27def0cd1eb0c9cf69fb605975c0efd8a5832` |
| 14 | `theorem` | [ofConjAct_toConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/ofconjact-toconjact.md) | 108 | `result-track:a5987d7258fd519744c3397c33f3ec637ac81c7e7345383af503c42b800e95ac` |
| 15 | `theorem` | [ofConjAct_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/ofconjact-one.md) | 112 | `result-track:c5a2087566cc26b46f3cea26fe182c242b98783fd2fe16c46c55639eb66eb107` |
| 16 | `theorem` | [toConjAct_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/toconjact-one.md) | 116 | `result-track:0746ccece3bbee05526df200a5fc90c30cc6a9c192c07758de3e6b73d3f2bf90` |
| 17 | `theorem` | [ofConjAct_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/ofconjact-inv.md) | 120 | `result-track:a88c56150bbe7a9372c0a429c302686890b9ea1ac61690c8030f7b5c9bfe43d3` |
| 18 | `theorem` | [toConjAct_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/toconjact-inv.md) | 124 | `result-track:efba3fafb88dcbd13d73368af3bea9752c58e47b9ce0bf9456225b14dcc5812c` |
| 19 | `theorem` | [ofConjAct_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/ofconjact-mul.md) | 128 | `result-track:cccf74783140fadf6103d258ac2008f0a2394cba8e5c3149225474634876bf2a` |
| 20 | `theorem` | [toConjAct_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/toconjact-mul.md) | 132 | `result-track:50ae8b76b203784e747e4d44d0f8df9d0bae1514e3ee6e4e97cf03ec4cc9adce` |
| 21 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/instance-source-edition-3.md) | 135 | `declaration-track:7e75fd6b4e65f68500171e36c1f811dc6e6c4315bb4eede0db07a13a14911c88` |
| 22 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/smul-def.md) | 137 | `result-track:136bf3f2bbb116be77d4d950fd43cbfcc9e288ef6373f9956c7de0731d60a83e` |
| 23 | `theorem` | [toConjAct_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/toconjact-smul.md) | 140 | `result-track:319f23965a00d1865d78864465d73e3dc6e1915fedc7afbfdff5eeca6db0239d` |
| 24 | `instance` | [unitsScalar](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/unitsscalar.md) | 151 | `declaration-track:bffc974230e1cd8b4f10f22ce6d5cd63417621a2875c104f17f8c64b76cc0837` |
| 25 | `theorem` | [units_smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/units-smul-def.md) | 153 | `result-track:550bc9af6a36af309e73419675ec245aaa2da139efd00f86510d9b6a4809153c` |
| 26 | `instance` | [unitsMulDistribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/unitsmuldistribmulaction.md) | 156 | `declaration-track:acb8ea41ee8c09bf05daea257470cbaa2d5c711518c12553b19d64c2552f8bf3` |
| 27 | `instance` | [unitsSMulCommClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/unitssmulcommclass.md) | 163 | `declaration-track:7d1bc9b9667ab52e1895e645ed96fdc5b1599a89b5198199e6d65026f2c33c24` |
| 28 | `instance` | [unitsSMulCommClass'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/unitssmulcommclass-source-edition-2.md) | 167 | `declaration-track:afe042111efd36c717df2e83ed50b96a6f28a5cc1e02e5c23e6142d8900899c7` |
| 29 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/instance-source-edition-6.md) | 180 | `declaration-track:d8d60873d906385267e63104f0ef4f5a1ee6b7ddddbe14ed196619ddce25d7fc` |
| 30 | `instance` | [smulCommClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/smulcommclass-source-edition-2.md) | 186 | `declaration-track:f42cd49b96dc03aaf8c21f0e103cb66457ff97dbed94fc91a35980171527ec08` |
| 31 | `instance` | [smulCommClass'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/smulcommclass.md) | 190 | `declaration-track:d616d75a3c77a63312aa0ef4685db90ceb0c05842d14e328186297467d8c0319` |
| 32 | `theorem` | [smul_eq_mulAut_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/smul-eq-mulaut-conj.md) | 195 | `result-track:a8d052074d384f6e4994aff42ed1ed56ef90cf3c2a6530890dc7c1a7f523168d` |
| 33 | `theorem` | [fixedPoints_eq_center](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/fixedpoints-eq-center.md) | 199 | `result-track:e475b5670483e84076b87070ed555cac64985482710c5264ad6e4635c17613ac` |
| 34 | `theorem` | [mem_orbit_conjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/mem-orbit-conjact.md) | 204 | `result-track:b80ccca586950a096a1973cdc406266a43cdb6124bcb0165e34f896d0ee4f021` |
| 35 | `theorem` | [orbitRel_conjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/orbitrel-conjact.md) | 207 | `result-track:b05deebeb01c59fc8f7b1355a5daf58505ad61b8cdc003eb8535c919be76e3ad` |
| 36 | `theorem` | [orbit_eq_carrier_conjClasses](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/orbit-eq-carrier-conjclasses.md) | 210 | `result-track:91ae20bf787fec374f08a8aee95d6c6ec8030c9d7b2f5f0aeb8c078ce1b9127e` |
| 37 | `theorem` | [stabilizer_eq_centralizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/stabilizer-eq-centralizer.md) | 215 | `result-track:e17906566156d65be99079f9d1972152cb9d69f45b6a0231534271c011cb3c04` |
| 38 | `theorem` | [Conj Act Namespaced To Conj Act Smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/centralizer-eq-comap-stabilizer.md) | 220 | `result-track:cb390ff1773cf34f16b1099921766e176d381c8c8f6400f05395754bc2ece174` |
| 39 | `instance` | [Subgroup.conjAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/subgroup-conjaction.md) | 232 | `declaration-track:9a3c7978fb30bf93d756cad1e5da8ffd02870ca0b1a858eea0bb892e9077de16` |
| 40 | `theorem` | [Subgroup.val_conj_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/subgroup-val-conj-smul.md) | 235 | `result-track:15a357da6613017c8400c72a8ea97b0ef7a14b4af64eeb8b489dd607e3be4101` |
| 41 | `instance` | [Subgroup.conjMulDistribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/subgroup-conjmuldistribmulaction.md) | 239 | `declaration-track:7a3d648f89089ad0e9f52170a057fa60369dd9e5ac5e69d7a7deb427288399bc` |
| 42 | `def` | [Conj Act Namespaced To Conj Act Smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/conjnormal.md) | 244 | `declaration-track:e4242c360a59808fe7552690b97a3d5c6e78a63c7fb42b8c6eedf13ef4edd029` |
| 43 | `theorem` | [Conj Act Namespaced To Conj Act Smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/conjnormal-apply.md) | 248 | `result-track:c3fc63a25a8e8f0fb194649eee827d50581fa2607586ea138043282736b99c42` |
| 44 | `theorem` | [Conj Act Namespaced To Conj Act Smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/conjnormal-symm-apply.md) | 253 | `result-track:87bf65a6ffc0877449809186e7c3613c7004cebbd2affd1aa240c3caabc3f75e` |
| 45 | `theorem` | [Conj Act Namespaced To Conj Act Smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/conjnormal-inv-apply.md) | 259 | `result-track:fea21762bd06879add8e555f3b6edd7a6765b95549629288c9ca2f861356c80e` |
| 46 | `theorem` | [Conj Act Namespaced To Conj Act Smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/conjnormal-val.md) | 263 | `result-track:9ceeb0b127a859113e8519ec0f60079950c4cf9ff559a63cee4062333081cb60` |
| 47 | `instance` | [normal_of_characteristic_of_normal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/normal-of-characteristic-of-normal.md) | 267 | `declaration-track:a37cc99d7e67b3ab819efa6566b9fb1ac29c05cfabd3049e5a6df8ed0541013a` |
| 48 | `def` | [unitsCentralizerEquiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActNamespacedToConjActSmul.lean/declarations/unitscentralizerequiv.md) | 283 | `declaration-track:6e439be286369e3f54616dd6042581508839098b51577a186330d488d34bcf1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e7f8ba68a1772c88aabfc1b5966053843cc6f20af39a89f1c28f1686dfa6b39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
