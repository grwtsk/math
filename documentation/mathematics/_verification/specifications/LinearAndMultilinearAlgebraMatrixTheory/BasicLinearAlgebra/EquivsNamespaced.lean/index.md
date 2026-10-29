# Verification target: Equivs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15329a3b19f4ecf7bb8a5e1b32b6d009f5538726",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15329a3b19f4ecf7bb8a5e1b32b6d009f5538726`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuaternionBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Star` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ι_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/eq-zero.md) | 81 | `result-track:7b936324e0cf757d711b04783a15ab3b27f7c4730f7e85516d94f9ef8dcf39b7` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/instance-source-edition-2.md) | 85 | `declaration-track:154880f4da0672b34835f9a29b1c9e12d5c08a51ec5838df43273828ae762f1d` |
| 3 | `theorem` | [reverse_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/reverse-apply.md) | 94 | `result-track:bbb4fc87a3c99fe9761e92fd692dbea7507ce18adb4cf315f78e43f0180acfe7` |
| 4 | `theorem` | [reverse_eq_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/reverse-eq-id-source-edition-2.md) | 103 | `result-track:d8bf1ee191d3711d5f490ad9a652b0aa8a5d8331fea26d7e6ea40f71ba15e93b` |
| 5 | `theorem` | [involute_eq_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/involute-eq-id.md) | 108 | `result-track:24c0baaac2b145fe7ec9a0fbb10ebe8e82ca9fbcf0e5447ade8b14f8ef4e9375` |
| 6 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/equiv-source-edition-4.md) | 112 | `declaration-track:97e633c3498ceb6ee7cb82eda73b60c4b6d4faec7aa99e9ca66c512dfb5530ff` |
| 7 | `def` | [Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/q.md) | 129 | `declaration-track:4e63fe025420ea764567321735c94f222a7bfbea43048f7c5dda246fb918078f` |
| 8 | `theorem` | [Q_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/q-apply-source-edition-2.md) | 133 | `result-track:48ad1ce0ee98b20e0faae0975d202fa70ac98eb9404281a71f9453d5afb441f3` |
| 9 | `def` | [toComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/tocomplex.md) | 138 | `declaration-track:94f7afb16bfe1705094585765eae081c467c0a020f3f5134809985a62c3a1c4f` |
| 10 | `theorem` | [toComplex_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/tocomplex-source-edition-2.md) | 146 | `result-track:feca5f410825c6443be762df12e52325d7d8c3e6c699d3bc6b05b2fe548f82b6` |
| 11 | `theorem` | [toComplex_involute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/tocomplex-involute.md) | 151 | `result-track:f112daec5bcdef9f60718341618c02385652603bfd77e29d3f15a84063b7f239` |
| 12 | `def` | [ofComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofcomplex.md) | 162 | `declaration-track:1354a5c8801dccf090ec7558822f920f9e0c306a5cfe4431b828bf6bbf22e349` |
| 13 | `theorem` | [ofComplex_I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofcomplex-i.md) | 168 | `result-track:d1d2971348024ac81766765043b4ff9bcdec99ebda142a05ce0832985393e2d5` |
| 14 | `theorem` | [toComplex_comp_ofComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/tocomplex-comp-ofcomplex.md) | 172 | `result-track:50a0e7779e189ad865d23ac2bf7411888aa4a2a1293f7b2218d17da6fe47fdff` |
| 15 | `theorem` | [toComplex_ofComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/tocomplex-ofcomplex.md) | 178 | `result-track:7bc83b8f43676fa0bcc2773b5c16a55e0ce2fa0112a00446bfd49981c40e0727` |
| 16 | `theorem` | [ofComplex_comp_toComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofcomplex-comp-tocomplex.md) | 182 | `result-track:004991f1d7abf594db25911c1ed24f407116be096bf85287a3885dcc796a3c70` |
| 17 | `theorem` | [ofComplex_toComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofcomplex-tocomplex.md) | 189 | `result-track:90934fa96332b59335846f979f21e8d018252e97e2f8f493b399924b2de70841` |
| 18 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/equiv.md) | 194 | `declaration-track:170274b1a83f474fdfa719980c2cb062752c90af1941fb41c1c4e98059ab52cf` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/instance.md) | 200 | `declaration-track:03d351909cd33cab5f7f6cb668f460066e1220f197385e02732ab4adc35f61b9` |
| 20 | `theorem` | [reverse_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/reverse-apply-source-edition-2.md) | 207 | `result-track:f83e63abedcc9eb53bde97b862d67a4072cb386ebe79d520821723f7a2f7ff52` |
| 21 | `theorem` | [reverse_eq_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/reverse-eq-id.md) | 215 | `result-track:32a19e1a2ce6d47884b6b26ffe50b7dbdec9f6d09bd04bb884e7002ebf3fe1ce` |
| 22 | `theorem` | [ofComplex_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofcomplex-conj.md) | 220 | `result-track:06780e7b0c6c469d7b9803e06f163190514a02cbe35a56c2542440b7d20cbc3c` |
| 23 | `def` | [Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/q-source-edition-2.md) | 239 | `declaration-track:a8e58f757c4b2fedc18f83bb5ce8a67419141a4a70d5b9e3a8f23a6bf290c4c6` |
| 24 | `theorem` | [Q_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/q-apply.md) | 243 | `result-track:09e054eafba5d01cbb8cb10a2db4fcf5ba20ff8b33ac5f428d9c50ed3aa30d02` |
| 25 | `def` | [quaternionBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/quaternionbasis.md) | 248 | `declaration-track:1a87447acc7f769396e9a1da68b15707fe5ec4a88b07a6c8c1709c834c4b46a7` |
| 26 | `def` | [toQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/toquaternion.md) | 267 | `declaration-track:39bbacdcc6298b2a66eba3d3ebaaa6b6fef9401728541aaade81b44ba0ce14c1` |
| 27 | `theorem` | [toQuaternion_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/toquaternion-source-edition-2.md) | 277 | `result-track:bdda088cd06cd23461b03676d2e3fdab6344fa012fda5ad7b629a69de8986baf` |
| 28 | `theorem` | [toQuaternion_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/toquaternion-star.md) | 282 | `result-track:d6ff2a8f9debac67578df7ee4132628d7cb0c9852b4a176a45d10f633e741be7` |
| 29 | `def` | [ofQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofquaternion.md) | 292 | `declaration-track:4d997ec5a904b0cb6eacb3b649c0ec8f1b216b70c1843b5298babb1e02a54420` |
| 30 | `theorem` | [ofQuaternion_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofquaternion-mk.md) | 296 | `result-track:f643e994ea53bf88a52f9a043afc1f7890aceac2c1a5dbe234f00283e705177f` |
| 31 | `theorem` | [ofQuaternion_comp_toQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofquaternion-comp-toquaternion.md) | 303 | `result-track:d15acfa843a3267948608c100eb8bc1aa1e709de7821baf9eeecf8b6f1422e6c` |
| 32 | `theorem` | [ofQuaternion_toQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofquaternion-toquaternion.md) | 315 | `result-track:ecd1d59e2f4c0517a0cd6612ad8ed35381dd2f6560e42b2ad486fe36df8012f5` |
| 33 | `theorem` | [toQuaternion_comp_ofQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/toquaternion-comp-ofquaternion.md) | 320 | `result-track:69a8f2ac0caa2162e936e00e4535b82c44fa75dfbe707ad27d3c55bf74d3b7ad` |
| 34 | `theorem` | [toQuaternion_ofQuaternion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/toquaternion-ofquaternion.md) | 325 | `result-track:b888dac78309cd717369d17ce1faf0a47390728fefb252a7ccae03c0106ae47a` |
| 35 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/equiv-source-edition-2.md) | 331 | `declaration-track:2508a32dc58a9506b083d6d50604491e8901ff206ae7b31c1e3fc9a2764e9f48` |
| 36 | `theorem` | [ofQuaternion_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/ofquaternion-star.md) | 337 | `result-track:679833a067879095a97efd062d76b38a665301bdc94d38c53b044a7bc44f3eb1` |
| 37 | `theorem` | [ι_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/mul.md) | 355 | `result-track:39defc2bf2e4af2683d86daecd0966022e7232440bd267410fd5333ce99331cd` |
| 38 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/equiv-source-edition-5.md) | 362 | `declaration-track:ffc581adad3648b7bfd7353be4fcfc13946e3e3b3b26da6d4bb3c4c70a1206a9` |
| 39 | `theorem` | [equiv_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/equiv-source-edition-3.md) | 385 | `result-track:80857d5cd3cb47c872792786b2b73e75d91fc0a4e86e10b372462afc1b22e77e` |
| 40 | `theorem` | [equiv_symm_eps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EquivsNamespaced.lean/declarations/equiv-symm-eps.md) | 389 | `result-track:ada1e34c4c88aeede973dc39b5168598a43ca82c2013467d5c836578cf5add98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28bcf0caae4956663f11c109452d10b8008b14f6f8d1685a82369d427c736508 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
