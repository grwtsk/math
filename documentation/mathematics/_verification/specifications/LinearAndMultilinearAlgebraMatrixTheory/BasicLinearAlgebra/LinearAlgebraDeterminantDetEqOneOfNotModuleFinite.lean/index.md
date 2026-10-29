# Verification target: Linear Algebra Determinant Det Eq One Of Not Module Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99debd313cd81ba4ac265cb7b6b52225d4b906bd",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99debd313cd81ba4ac265cb7b6b52225d4b906bd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivOfPiLEquivPi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/equivofpilequivpi.md) | 59 | `declaration-track:3310773811280a46f8a70cfe7beb38a5fa288008799d85f9050d20fddadca3a2` |
| 2 | `def` | [indexEquivOfInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/indexequivofinv.md) | 69 | `declaration-track:ac694563edba73ffc74907f1bc6b9e69a10f6501ec8feeabe45aa5f0b1c6a21d` |
| 3 | `theorem` | [det_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-comm-source-edition-2.md) | 73 | `result-track:5f276f5938902379feef55eb83d39236205462d64d76221b2f9dcf05176d67d2` |
| 4 | `theorem` | [det_comm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-comm.md) | 78 | `result-track:11f311a9ccd482a5da674144332210cebd2d2e7a8fe5750ff40f6e6e19185cd2` |
| 5 | `theorem` | [det_conj_of_mul_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-conj-of-mul-eq-one.md) | 90 | `result-track:fc6912c8281198d34319f0bad2237696a8f6164e9561b4df6c976501f74710ae` |
| 6 | `theorem` | [det_toMatrix_eq_det_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-tomatrix-eq-det-tomatrix.md) | 108 | `result-track:602213d5e3e1fe7edce7d42f5e317b42532a84a3820c5f0968004b86e6bc54da` |
| 7 | `theorem` | [detAux_def'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/detaux-def-source-edition-2.md) | 133 | `result-track:ef71088acc403ce0b3df8b4d9e1a6933aaedf3b739690f0444fd5a43c9730d28` |
| 8 | `theorem` | [detAux_def''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/detaux-def.md) | 138 | `result-track:7025500f594a6708afcfdc754a17cf573fd10908ef9f9db2f445462e8e46fde3` |
| 9 | `theorem` | [detAux_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/detaux-id.md) | 145 | `result-track:a38edecfcb74fd652d4095469b3c58b944000c5ae3b021cb4ac1a0e385e42d33` |
| 10 | `theorem` | [detAux_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/detaux-comp.md) | 149 | `result-track:268674789ca4bacc30167c0ce66d8eb15e934b44b57fd43295d16a02e5f6a1bb` |
| 11 | `theorem` | [coe_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/coe-det.md) | 167 | `result-track:5af4d9353844ea4e92c95e54c92b7a9f48656689c73a153688ca8dda5471d17e` |
| 12 | `theorem` | [det_eq_det_toMatrix_of_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-eq-det-tomatrix-of-finset.md) | 182 | `result-track:e3be501ee6ba7b11fcbd4c1fb76be07dbccb767be5aa70b8e7240567c6ff5dcf` |
| 13 | `theorem` | [det_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-tomatrix-source-edition-2.md) | 188 | `result-track:e472c17a27a01e4cffabe995dd87c696e4290d1126487939c607c60546a12b4a` |
| 14 | `theorem` | [det_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-tomatrix.md) | 195 | `result-track:584ed5cf9871976f2772e905cb245733cfb02a1d9400e949346d67bcbda5c214` |
| 15 | `theorem` | [det_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-tolin.md) | 199 | `result-track:244bda14b83b6c26ecfb128a22492592789aecc46c484f94ac984454c1392f7d` |
| 16 | `theorem` | [det_toLin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-tolin-source-edition-2.md) | 204 | `result-track:38010acd61b57d72d021e0aeee17ec68116a39fedd932d589c734ebac0036c9d` |
| 17 | `theorem` | [det_cases](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-cases.md) | 210 | `result-track:8ae170d21f41319e1f03f84d8bda457f2dd36f2a1b040eb78fd7aad4c1fe6031` |
| 18 | `theorem` | [det_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-comp.md) | 222 | `result-track:61f34cbde89fa50544af36c0195ef5eac6d4604c33f8ddd574b1dcc3ff5c62ca` |
| 19 | `theorem` | [det_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-id.md) | 227 | `result-track:04f38870b875440954f6476eec5f21545d70a251b04b83b02e52e6d0ebf96cca` |
| 20 | `theorem` | [det_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-smul.md) | 232 | `result-track:9330809b0ff15639b0372061f6cbbbe87243f0533854a67823f9df073c56df81` |
| 21 | `theorem` | [det_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-zero.md) | 245 | `result-track:3a64d3c7959664e33ce02a740817f49de679b524d0f557ff52cb49838ee75363` |
| 22 | `theorem` | [det_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-zero-source-edition-2.md) | 255 | `result-track:890ff0d985c99aa277ad8f706fd53341b31696a3ebc5fd7e99fcc477e1e85fba` |
| 23 | `theorem` | [det_eq_one_of_not_module_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-eq-one-of-not-module-finite.md) | 259 | `result-track:5f4b9eeff04a924599b45a6c215bcc40af90203da18ecd9bf63e521d8b17847a` |
| 24 | `theorem` | [det_eq_one_of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-eq-one-of-subsingleton.md) | 264 | `result-track:e73b5967c479bab5f29d5399e16735302938071bd19a85169a5c22b691424320` |
| 25 | `theorem` | [det_eq_one_of_finrank_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-eq-one-of-finrank-eq-zero.md) | 270 | `result-track:b2dd1b48745d704da6a12900cc5ca886ec17448dcad0701c74ffb23c2e13ad16` |
| 26 | `theorem` | [det_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-conj.md) | 283 | `result-track:bb60a46d40800b2841ad95772cad4e14ecdea3d9b69b52179e791a323cb52e88` |
| 27 | `theorem` | [isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/isunit-det.md) | 301 | `result-track:7f7b71de2fbc190c8f42bfc6dc665c191c06ce7839acc2e5bf63103c3aa3fe21` |
| 28 | `theorem` | [finiteDimensional_of_det_ne_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/finitedimensional-of-det-ne-one.md) | 309 | `result-track:bc625cd7f1d7409a56ec6718a97f5d19e8e772d753506b2062a7ef08f4e1ccbf` |
| 29 | `theorem` | [range_lt_top_of_det_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/range-lt-top-of-det-eq-zero.md) | 317 | `result-track:2c6fe16797f27398889ba152900cef6f83c71922dde8197b40b17d4c4e08a0b3` |
| 30 | `theorem` | [bot_lt_ker_of_det_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/bot-lt-ker-of-det-eq-zero.md) | 325 | `result-track:bbd13f869bd1f5d5b5a25ef3d4c46961b1c2ffe5d2558c286ad5ab3b8fd0f9e0` |
| 31 | `lemma` | [det_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-ring.md) | 333 | `result-track:a0cb91396d748e8b17ae5566a3298100f6f229305a041f9a55ad432da0159a44` |
| 32 | `lemma` | [det_mulLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-mulleft.md) | 336 | `result-track:303c3e02ba0e15a7619b233afaa3b5777e3be09f086efe0fa8a4ac390398d59f` |
| 33 | `lemma` | [det_mulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-mulright.md) | 337 | `result-track:9925455c8b51fa2184715e1c6afd574027db1620d013e1933586455658b3294b` |
| 34 | `theorem` | [det_prodMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-prodmap.md) | 339 | `result-track:a5b1672e108ad4d921f01f32bf94303983004d78c5310e6a85eb8147755b5684` |
| 35 | `theorem` | [det_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-pi.md) | 348 | `result-track:c5ae3b5482fed05eca60ce078817dd23dc40d771681fbad63efbc95d7de415f7` |
| 36 | `def` | [det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det.md) | 375 | `declaration-track:056c2be9adfe6e10bd4e062856fdeab1c436418bd082eb1425b85c89d970f421` |
| 37 | `theorem` | [coe_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/coe-det-source-edition-2.md) | 380 | `result-track:7fcdfe4b349c4126a9fa666b1d05f70581b248a09c47d2fa81105ee90f4de4cb` |
| 38 | `theorem` | [coe_inv_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/coe-inv-det.md) | 384 | `result-track:c8f77f3637a599ffdb2ad1d97a2912a42604715aac00ab9060b020c1a698b761` |
| 39 | `theorem` | [det_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-refl.md) | 388 | `result-track:91f15731d4a8ee7192d522ed7e38632115b507eae32be3a0775e60fcc7ab0e7c` |
| 40 | `theorem` | [det_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-trans.md) | 392 | `result-track:29688ba866cdc61515453241d0a009c4c1187357e641a3cd879ac1c0b0521d50` |
| 41 | `theorem` | [det_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-symm.md) | 397 | `result-track:cc7f4652fbe4e49908586f48af7778ae84ca82c5fb79f331b9d61f9eca810f19` |
| 42 | `theorem` | [det_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/det-conj-source-edition-2.md) | 402 | `result-track:ec5bad71097dd284487cf98188d20b854602a310b61df5b0a266cd082fb3f3d6` |
| 43 | `theorem` | [LinearEquiv.det_mul_det_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-det-mul-det-symm.md) | 412 | `result-track:1e5088995acabb36017b0ea3dc057c21a69a631fea701dc741690a66cf136b7c` |
| 44 | `theorem` | [LinearEquiv.det_symm_mul_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-det-symm-mul-det.md) | 418 | `result-track:63d865fd8461e7181d0d8c412b3ddc3d86d292c19fad2ef241c3ddaef0e4723a` |
| 45 | `theorem` | [LinearEquiv.isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-isunit-det.md) | 423 | `result-track:2f6fc87a3c0db27897aa29a178354998898e600907c7bffd59e28152aeb25a89` |
| 46 | `theorem` | [LinearEquiv.isUnit_det'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-isunit-det-source-edition-2.md) | 429 | `result-track:4263b579f783b1c940ae5bd757714a0b740e0a714c7ef52cb262e69b7434ed49` |
| 47 | `theorem` | [LinearEquiv.det_coe_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-det-coe-symm.md) | 434 | `result-track:6440e5cc4a0d2bb9cdab407d711230eab7c9cedb8c69683ae761ce9034c20c7e` |
| 48 | `def` | [LinearEquiv.ofIsUnitDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-ofisunitdet.md) | 440 | `declaration-track:07c45108bb0dff321683f055702eccf6b7b52c49c464d6aaaed099dc80b975c6` |
| 49 | `theorem` | [LinearEquiv.coe_ofIsUnitDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-coe-ofisunitdet.md) | 458 | `result-track:df40bebad46b9f7db79e9654d2719f413a0e22c9977c83afe5e22c78d9f8760b` |
| 50 | `abbrev` | [LinearMap.equivOfDetNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearmap-equivofdetnezero.md) | 466 | `declaration-track:bbf3dab3c789fc5a5596a7b57862d5e2b046655cf560f66f3e95a3d13d626958` |
| 51 | `theorem` | [LinearMap.associated_det_of_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearmap-associated-det-of-eq-comp.md) | 474 | `result-track:f6f5e67c9446ba929d5d99bb96e242178458f18afd5952ee28626ccb59b21eca` |
| 52 | `theorem` | [LinearMap.associated_det_comp_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/linearmap-associated-det-comp-equiv.md) | 483 | `result-track:68c2e599fcc88af22ed3aecbfae45febb67361f27163c0e068953be5323f3806` |
| 53 | `def` | [Basis.det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det.md) | 493 | `declaration-track:4407ae9c16941680b3496d397f44c764f0e0d22bbfa964ee290a6e5971a55aff` |
| 54 | `theorem` | [Basis.det_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-apply.md) | 509 | `result-track:67157e4ee6ed8dd7787e3e7a6b4c9711b2dcb9939bd1212d474e53896b2e2f34` |
| 55 | `theorem` | [Basis.det_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-self.md) | 512 | `result-track:4e311db9e65645ccf26f328c3a2a39d0f9cdfbbba1e73cfee273a295dbc03d99` |
| 56 | `theorem` | [Basis.det_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-isempty.md) | 515 | `result-track:c49b5ddbbf8b68a728c3e902f719bda7c32a47b5f0d9f6ebd0f185d9be6c0584` |
| 57 | `theorem` | [Basis.det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-ne-zero.md) | 520 | `result-track:f67bc1a31f73426386c2da74ee9ce1e1ef51d3a6c163fc45adfc786692fa6c55` |
| 58 | `theorem` | [Basis.smul_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-smul-det.md) | 522 | `result-track:a311c4f65d573fa316da089e9785ac1d0a3779066ecd9a5d399aee0a641e6d17` |
| 59 | `theorem` | [is_basis_iff_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/is-basis-iff-det.md) | 527 | `result-track:d266ec2b7da2f7f4e4d1a8d9ddfeae162f4ea9d3300bd48c136da60a669d63f3` |
| 60 | `theorem` | [Basis.isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-isunit-det.md) | 545 | `result-track:9fe9b6472edce294b8e3140906de2f10bb7504fa003c264efdb5ed5650928ff7` |
| 61 | `theorem` | [AlternatingMap.eq_smul_basis_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/alternatingmap-eq-smul-basis-det.md) | 550 | `result-track:5c6a1f68b0a61c8b545004a753c2dd7213edeaf8c8481e290fa5b61d3f780762` |
| 62 | `theorem` | [AlternatingMap.map_basis_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/alternatingmap-map-basis-eq-zero-iff.md) | 557 | `result-track:39a00befe66c44915e7ef3cd5f9e296c7eddc4b5c743d1d6dfee7e960aa9171b` |
| 63 | `theorem` | [AlternatingMap.map_basis_ne_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/alternatingmap-map-basis-ne-zero-iff.md) | 565 | `result-track:35eb2909772c950b0bff6b52d4a8644c053e279ec78918846102b48e54d619ca` |
| 64 | `theorem` | [Basis.det_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-comp.md) | 572 | `result-track:e54d9ab5432ded5f999b2c5f497c392288b0c88080f032fa04264e2eed2d48e5` |
| 65 | `theorem` | [Basis.det_comp_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-comp-basis.md) | 579 | `result-track:41b2646f5d7ca171c5330f8637b822db684cdf8a3d28c52cd5e6a4fc36d4be0d` |
| 66 | `theorem` | [Basis.det_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-basis.md) | 587 | `result-track:8f3a6723c58ae8740d27e83e5c2fb20a5e4f1e62a7db2dd04cb78154d34fb6e2` |
| 67 | `theorem` | [Basis.det_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-inv.md) | 591 | `result-track:1264bfc066f3250514e6b827ea1b7d0f1cd285fc7fa11e8d6a959758afbdb824` |
| 68 | `theorem` | [Basis.det_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-reindex-source-edition-2.md) | 596 | `result-track:e7a18e3a2eb03e93c3234b8c6cf37818f5fdf6feabd1037be84fb355c10a60b7` |
| 69 | `theorem` | [Basis.det_reindex'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-reindex.md) | 600 | `result-track:252885627b6b50aaeccea7203f9f734acb6b1263cf0def4fbc21440398bcb2d7` |
| 70 | `theorem` | [Basis.det_reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-reindex-symm.md) | 604 | `result-track:3fc6daa1d60448d3d99ec8be2c79f25a7cc24526b2038162d0d845a9debdb98b` |
| 71 | `theorem` | [Basis.det_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-map-source-edition-2.md) | 609 | `result-track:ea067551b54428ea980bec492ba89ea7ed22498c03eedfb1433de0dd31e97f7c` |
| 72 | `theorem` | [Basis.det_map'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-map.md) | 613 | `result-track:d1aec6d9118e9c22919f71ecab17e8264d82342fa0dbae2f3da2d4698e411082` |
| 73 | `theorem` | [Pi.basisFun_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/pi-basisfun-det.md) | 618 | `result-track:858cb8d446828002f6856da2fc38d00c375d7c2b7c115dd174c43fb69eda93c6` |
| 74 | `theorem` | [Pi.basisFun_det_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/pi-basisfun-det-apply.md) | 622 | `result-track:b42276bc3604432cbb9ed4de81ebaa38d1a9e6f0f45c75f794b68c1482c33945` |
| 75 | `theorem` | [Basis.det_smul_mk_coord_eq_det_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-smul-mk-coord-eq-det-update.md) | 629 | `result-track:cefbdf527a45c5b97d745bb627b1cb563c0f80a39e22b989a202183571bff397` |
| 76 | `theorem` | [Basis.det_unitsSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-unitssmul.md) | 644 | `result-track:436cc487842900e275dadb8c727982bd635dc8a7d729954efc497e3067ded262` |
| 77 | `theorem` | [Basis.det_unitsSMul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-unitssmul-self.md) | 656 | `result-track:4099799001d3f847ecc7f80f178cc0d70877394997c8b0e3e34c6b9abf2ab7e7` |
| 78 | `theorem` | [Basis.det_isUnitSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantDetEqOneOfNotModuleFinite.lean/declarations/basis-det-isunitsmul.md) | 661 | `result-track:7ad73f673b0a1dfbd68cef7ff5a4b4f986cfafcf0c465663054762cd71c6ebf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a4aa19cab93f6b5023f3ccf0abbe862eef1984f4a11a029b68abf26cba3dcc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
