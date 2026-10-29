# Verification target: Algebra Algebra Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09a01eac5a5f7853c412805f699621c811893bc7",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09a01eac5a5f7853c412805f699621c811893bc7`.

Source path: `GRWTSK/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/algebra.md) | 101 | `declaration-track:11e0b15b708f297dd33ee358035eccf224eb353abfebd3c84e935e526fd15157` |
| 2 | `def` | [algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/algebramap.md) | 111 | `declaration-track:3504348a921655973827ece4e52f2b34b97f88c66892ef3aade75cbd95ab82c1` |
| 3 | `def` | [Algebra.cast](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/algebra-cast.md) | 116 | `declaration-track:ec43c9e6b6f7209c85e4ec81acc0ebe92e51d3f164145c100b27975f4cffe87f` |
| 4 | `instance` | [coeHTCT](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coehtct.md) | 121 | `declaration-track:f0f30203e0ab3ae01d6a8b517dfbf6b4c94b295485802476d1a200d213218698` |
| 5 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-zero.md) | 130 | `result-track:9d674f57b5d625ca9eeb0a5778fa78e8099c7666f6e0da2106b191e767dfc631` |
| 6 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-one.md) | 134 | `result-track:f550bdd93ab01a5828070a3356651b64670b5df7bd1fa540793246ce58f5d007` |
| 7 | `theorem` | [coe_natCast](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-natcast.md) | 138 | `result-track:143653440b5809d67bf4fcccf9a1122d988dda3c35670677013271b78168840e` |
| 8 | `theorem` | [coe_add](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-add.md) | 142 | `result-track:a1bb1c62f82100cd62500d28544b23c956eb323167714cc6226f4b8ffbf22296` |
| 9 | `theorem` | [coe_mul](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-mul.md) | 146 | `result-track:dd9cd5a6575fb7babbcd00a32f8bbf95d4864ac22d7fa022f2158280a81bd29a` |
| 10 | `theorem` | [coe_pow](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-pow.md) | 150 | `result-track:5e4f03978228385c64a4d2b2ea89dbd838a4053863186a0148c14afd8455c49c` |
| 11 | `theorem` | [coe_neg](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-neg.md) | 160 | `result-track:4d4cc8d6a3d12ced2894ebe02a9bba98861f5e73f0e8a56d7c31fc6790971c6d` |
| 12 | `theorem` | [coe_sub](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-sub.md) | 164 | `result-track:07221125767f65ed2b4716e3e7f63f43779dfe916a019d8dbe06ff14fda7b7e0` |
| 13 | `abbrev` | [RingHom.toAlgebra'](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ringhom-toalgebra-source-edition-2.md) | 174 | `declaration-track:d9e266f6052118306f1e768022c4b105439bf1ec9a3ada71a8629953a6bc872b` |
| 14 | `theorem` | [RingHom.smul_toAlgebra'](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ringhom-smul-toalgebra.md) | 183 | `result-track:4f288f0d150c9eca65c3bb554b6cf0e09e9a4f1c3d2203742285efd5963254c1` |
| 15 | `theorem` | [RingHom.algebraMap_toAlgebra'](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ringhom-algebramap-toalgebra.md) | 189 | `result-track:09543a30ed5a123f1f7be2a61a7312dbf33649447f797a3f183b444b52a71670` |
| 16 | `abbrev` | [RingHom.toAlgebra](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ringhom-toalgebra.md) | 196 | `declaration-track:1099f0df9371d8614039e9165c4b938a221bec720e84307bbdedbc501e0fb52f` |
| 17 | `theorem` | [RingHom.smul_toAlgebra](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ringhom-smul-toalgebra-source-edition-2.md) | 199 | `result-track:697e3aaecad7747074e02014ea8dd5e3dacb4c8d84c1cf31c8faf4b24d9659a7` |
| 18 | `theorem` | [RingHom.algebraMap_toAlgebra](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ringhom-algebramap-toalgebra-source-edition-2.md) | 204 | `result-track:b69ce714c2f8c3cf65162ef1d058a39caa8af74087e0549a88ba78de7af26454` |
| 19 | `abbrev` | [ofModule'](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ofmodule-source-edition-2.md) | 217 | `declaration-track:cfb9543f666ed46c123d6dbbd1d59a625fdd85c4fb474f287612e55538a2c337` |
| 20 | `abbrev` | [ofModule](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/ofmodule.md) | 234 | `declaration-track:5e0f8c2b7b015d647a27af776a757e03b5d2891c7fb00672c65fdc04faa74288` |
| 21 | `theorem` | [algebra_ext](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/algebra-ext.md) | 249 | `result-track:d7cc135a618238eadf630a63cb09bca9e08522ecb8bc3d1a309e16a987185c9c` |
| 22 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/instance.md) | 261 | `declaration-track:18d469eaf5c6a4b7781049b8d425734ec4a0cc3fbb7ea00a13259502385e0ebe` |
| 23 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/smul-def.md) | 270 | `result-track:4c5ab040e6a9bcd497649ec0f45edf7e5d48b8b4a052e00ab4d53d75b3f0ed9f` |
| 24 | `theorem` | [algebraMap_eq_smul_one](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/algebramap-eq-smul-one-source-edition-2.md) | 273 | `result-track:d5ff78d60b59b4098713a277ccc8b41d49a232e534a1dc8b0eecc13b743acbba` |
| 25 | `theorem` | [algebraMap_eq_smul_one'](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/algebramap-eq-smul-one.md) | 278 | `result-track:940017ba633bf74b206e2be0f42d57cf3a29ce5139687141548531e8228aee67` |
| 26 | `theorem` | [commutes](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/commutes.md) | 282 | `result-track:b55dcd36d005236607b78d2e66392ca5925628a6df67fcbedd7efc18e82c9ca9` |
| 27 | `lemma` | [commute_algebraMap_left](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/commute-algebramap-left.md) | 285 | `result-track:5abc780165d32c785a1961059ae7b44e1542fb8032844ac78e3620c1a54cce8d` |
| 28 | `lemma` | [commute_algebraMap_right](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/commute-algebramap-right.md) | 288 | `result-track:77944a29e95a26e317bece74479c101b952f9a1e70c4ba73ad72d0770fc2eb6d` |
| 29 | `theorem` | [left_comm](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/left-comm.md) | 292 | `result-track:d21070a9faf4d1b67a7de8421a61b30ca27c9487a29bb4f275333437bbb70500` |
| 30 | `theorem` | [right_comm](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/right-comm.md) | 297 | `result-track:eceefe36e4da45b9296dff7e33f98f4fe29b05c6f047e951039af031bf08e58b` |
| 31 | `instance` | [Algebra Algebra Defs Namespaced](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/right.md) | 301 | `declaration-track:c7d3e62dce947543c3ee2bfccac1015d7a1f5c82894bb7c6d6882ee1c29979da` |
| 32 | `theorem` | [Algebra Algebra Defs Namespaced](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/smulonehom-eq-algebramap.md) | 305 | `result-track:e59867dc9611bc083d6ed18752756be44d7f88818942c120f02abc33018bd5cd` |
| 33 | `theorem` | [mul_smul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/mul-smul-comm.md) | 314 | `result-track:b69dce9fdd729dae33788c38592d91081b5b1141483b5ccbebcef801d470faae` |
| 34 | `theorem` | [smul_mul_assoc](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/smul-mul-assoc.md) | 320 | `result-track:30f6a2cbc38b3b3d00df503bc76dd3c5bc25bccdd39b010b7c1078a71a160188` |
| 35 | `theorem` | [Algebra Algebra Defs Namespaced](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/smul-algebramap.md) | 324 | `result-track:9ec033edf24e8ce44421330240b45418ee3c28d86cc66d9649453aaabcbaa98f` |
| 36 | `abbrev` | [compHom](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/comphom.md) | 337 | `declaration-track:535ace38f5b75f08094e35b0848298a93fde656bbd0fd190534747cbccf68886` |
| 37 | `theorem` | [compHom_smul_def](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/comphom-smul-def.md) | 343 | `result-track:780fd441b8dfccccf6b27c13f3fe5bfa830059bbf2dbae925fe1ede6170894ad` |
| 38 | `theorem` | [compHom_algebraMap_eq](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/comphom-algebramap-eq.md) | 347 | `result-track:080c4ca587b9d803ae4b2b7d3ac6461ea76f0a5b777cbc10845c330b05b1f05e` |
| 39 | `theorem` | [compHom_algebraMap_apply](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/comphom-algebramap-apply.md) | 351 | `result-track:0c36e57044fdb10c5a2a56eb7a092b7226c320387ed0e6adbe4cfe21c95def3b` |
| 40 | `def` | [linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/linearmap.md) | 363 | `declaration-track:e2821fd06fd5a999d200561ea0ff6918bbc066ab2eb833c4cf8b91d20d7a7f62` |
| 41 | `theorem` | [linearMap_apply](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/linearmap-apply.md) | 367 | `result-track:f0a6b06bed9f4fc8c824b4a028fd2b826cc53e4476c7974d7927bf7fba235820` |
| 42 | `theorem` | [coe_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/coe-linearmap.md) | 370 | `result-track:b9e8b2f831f84234f7cae3cafe439e32dc139897965d9e2905f4f59bc22da930` |
| 43 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 374 | `declaration-track:67bf08e97add3c20b8b3249a952f5a578d17fb7b92fe222e7d335c0c54ce4112` |
| 44 | `theorem` | [map_eq_id](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/map-eq-id.md) | 386 | `result-track:2f4d644895c74edad3c3156e0b7ee0b35aa2cf8e9be95c8492f2710405af766c` |
| 45 | `theorem` | [map_eq_self](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/map-eq-self.md) | 389 | `result-track:8498ebf03eeaaa28c56539b0dea550fbc4d9fbc041a81809367743945aa5ccda` |
| 46 | `theorem` | [smul_eq_mul](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/smul-eq-mul.md) | 393 | `result-track:0e0f602427b9315c86b69795b53c9adce68035cdf36663a16066d294da58633f` |
| 47 | `theorem` | [algebraMap.coe_smul](../../../../AssociativeRingsAndAlgebras/AlgebraAlgebraDefsNamespaced.lean/declarations/algebramap-coe-smul.md) | 403 | `result-track:5e6253b06465592d77a4948d3818f20d6530ee8c2fc66eae45f76f311debda32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0d848405a0497b2cf2fc9ad8c5a367b4c1f0b38dc2cbdaf2267f319e507b396 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
