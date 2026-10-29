# Verification target: Comm Semiring Adapter Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bef07089fb88e27643bc64183b037fa15b9362ec",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bef07089fb88e27643bc64183b037fa15b9362ec`.

Source path: `GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.LemmasAux` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.denoteS](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-denotes.md) | 16 | `declaration-track:548fd15dd89d69b48cae7c014a3cd9dd42035191585afc7e0436560fa5e32715` |
| 2 | `def` | [Expr.denoteSAsRing](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-denotesasring.md) | 25 | `declaration-track:e971555fe610a97c9b19e68929d3b0d2779c066cd68997933a320c0dc55498be` |
| 3 | `theorem` | [Expr.denoteAsRing_eq](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-denoteasring-eq.md) | 36 | `result-track:e5dacc1a94476ad906c486e5988b14736f897e9fedfb35944fa83e246d97faa8` |
| 4 | `def` | [Expr.toPolyS](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-topolys.md) | 39 | `declaration-track:03ce8cc4f068b5d50be25aa9f344d23dc8ee662e7994d7de86e4dcb10810221a` |
| 5 | `def` | [Expr.toPolyS_nc](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-topolys-nc.md) | 52 | `declaration-track:7b24ee4551d04d8da75256ab77e0e9814afb4259f6a216921b32dc98104f9a2e` |
| 6 | `inductive` | [Poly.NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-nonnegcoeffs.md) | 73 | `declaration-track:b29a7aa356330c58a02285bf8d30708a521aa99490034ef5b2aefb5e5e536660` |
| 7 | `def` | [denoteSInt](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/denotesint.md) | 77 | `declaration-track:1cba56f0137c77b7760c8cd5dc5b9b397b5ac26e71eea66815e9d465f18d69d2` |
| 8 | `theorem` | [denoteSInt_eq](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/denotesint-eq.md) | 83 | `result-track:49a3e8932b6f0210bf3f9e1a719f8a09a6ad3e14de5e126f2bbc91ec390c1f08` |
| 9 | `def` | [Poly.denoteS](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes.md) | 91 | `declaration-track:8eb722f61a2bcee1a2b24d300a7d3477c951a3b0639bcb004f9e97bcb14d5c93` |
| 10 | `theorem` | [Poly.denoteS_ofMon](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-ofmon.md) | 98 | `result-track:b5466bf477e7f194149ef6defc71b1164f2fe19f1c20590a060cd40f5b933518` |
| 11 | `theorem` | [Poly.denoteS_ofVar](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-ofvar.md) | 102 | `result-track:6fbbb182422bb6b55db7dafaa085cf06bea79d327d90f4c840eb6469a07b180c` |
| 12 | `theorem` | [Poly.denoteS_addConst](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-addconst.md) | 106 | `result-track:9adceaed0dc018809fa9593185ba1c2f993f7aeb8847157eca0177d78854aba6` |
| 13 | `theorem` | [Poly.denoteS_insert](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-insert.md) | 119 | `result-track:309ad1b14cbc767a180e1d110ea2fff64a458435a101f3aaeb7ed32cb1257ab7` |
| 14 | `theorem` | [Poly.denoteS_concat](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-concat.md) | 146 | `result-track:60570c7a3f3d14f2109af0bce67dd0399342e36159f39dd46790da88c62fb1a9` |
| 15 | `theorem` | [Poly.denoteS_mulConst](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mulconst.md) | 152 | `result-track:3109d7eb68f30cac65633b62a47689f8bd13782d5d55f57dcbad14e999f7705e` |
| 16 | `theorem` | [Poly.denoteS_combine](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-combine.md) | 166 | `result-track:6863510710034ae36361f4e80966266a3d6c1941503c21e6001bc61b9b663a4c` |
| 17 | `theorem` | [Poly.denoteS_mulMon](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mulmon.md) | 199 | `result-track:f0a3ae3e50089f5f606f4d3b6de00d0e23dbd12b4eafd713448c4a4c04a29d2f` |
| 18 | `theorem` | [Poly.addConst_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-addconst-nonnegcoeffs.md) | 222 | `result-track:dd1fbf713c2699803941092c4f5649ce3b2bb220a6d86d5d25696427ffc97e7d` |
| 19 | `theorem` | [Poly.insert_Nonneg](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-insert-nonneg.md) | 229 | `result-track:9ddf6d1384ac2f20b718beaa86bdbeb960d47433a6e3e83578578e7295dd5d0c` |
| 20 | `theorem` | [Poly.denoteS_mulMon_nc_go](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mulmon-nc-go.md) | 245 | `result-track:f79ae044235fbcb3b7399fe86b349d561d633560e60e237f4c9020808227ec66` |
| 21 | `theorem` | [Poly.num_zero_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-num-zero-nonnegcoeffs.md) | 269 | `result-track:cc1e1a68abcf7a6a27027aff122ec949f7ef120782d4c070f716d8e9758f595b` |
| 22 | `theorem` | [Poly.denoteS_mulMon_nc](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mulmon-nc.md) | 272 | `result-track:5b4e22cd92bc9c219c5f25f014550223b28ca70923173491438f3ed539a76396` |
| 23 | `theorem` | [Poly.mulConst_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mulconst-nonnegcoeffs.md) | 286 | `result-track:f66a858310f2676de33a9dad1c5f4bd202e87c6f5ef6f9939d57d0525e2507ed` |
| 24 | `theorem` | [Poly.mulMon_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mulmon-nonnegcoeffs.md) | 299 | `result-track:eed816594c0b86a769892696cd95ae1b48277f920a26896683be30b666f57b03` |
| 25 | `theorem` | [Poly.mulMon_nc_go_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mulmon-nc-go-nonnegcoeffs.md) | 312 | `result-track:b9869f3c533016014d1621a15bfb9a58920682331a4fce8c80eb01ffa4c9f018` |
| 26 | `theorem` | [Poly.mulMon_nc_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mulmon-nc-nonnegcoeffs.md) | 327 | `result-track:8e1f90fe4fd820987065d9242488c8005890d97833e93670b31ced088678280c` |
| 27 | `theorem` | [Poly.concat_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-concat-nonnegcoeffs.md) | 336 | `result-track:c968054127ff961f9909baf3068cbed2c984bc3b9cd49fde424fd9fc27eb7a8a` |
| 28 | `theorem` | [Poly.combine_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-combine-nonnegcoeffs.md) | 341 | `result-track:152f10e4a4d7265551d31bb880f2eeb0bbc19cdab671cc4029a2b71e5b6e989c` |
| 29 | `theorem` | [Poly.mul_go_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mul-go-nonnegcoeffs.md) | 362 | `result-track:a0c0bc35c25b1bb5927f44d55db27eefcc1385c697a3bf47c996fe14b8198c61` |
| 30 | `theorem` | [Poly.mul_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mul-nonnegcoeffs.md) | 378 | `result-track:33ee420abe6237d11d2a0c3e346c116a08ab188466818d2c0968d166d83d247c` |
| 31 | `theorem` | [Poly.mul_nc_go_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mul-nc-go-nonnegcoeffs.md) | 382 | `result-track:50db02176fc86b634edd30c84f4c51c8fb969c25b96b7432561c0357e9ae16f1` |
| 32 | `theorem` | [Poly.mul_nc_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-mul-nc-nonnegcoeffs.md) | 398 | `result-track:826508d8ab8555161f3f712a4274385ef58db7843d6b97fc318622b2163422f3` |
| 33 | `theorem` | [Poly.pow_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-pow-nonnegcoeffs.md) | 402 | `result-track:2d5308b7c945816247e2fbf01331e04856c4ce02786dbfe10fa3730f053b1987` |
| 34 | `theorem` | [Poly.pow_nc_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-pow-nc-nonnegcoeffs.md) | 408 | `result-track:5ca63bceb137fb50e591035b4a5f6fd6f388650ec6bb1242856be629cfc50fe5` |
| 35 | `theorem` | [Poly.denoteS_mul_go](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mul-go.md) | 417 | `result-track:dc6d439a37a3353f7b6c12c8d0d00cec1491fa5700888925e6e5ca7192a772ec` |
| 36 | `theorem` | [Poly.denoteS_mul](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mul.md) | 433 | `result-track:097be6ca656c1eec494b281a3e76a1e56b82b97a889c7e7177b2654c67657f91` |
| 37 | `theorem` | [Poly.denoteS_mul_nc_go](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mul-nc-go.md) | 438 | `result-track:30fc3cad1c7e5d4343eac724267c783b9f0586d662b442641a9a2f6673eea992` |
| 38 | `theorem` | [Poly.denoteS_mul_nc](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-mul-nc.md) | 454 | `result-track:510f37157c0f35688925aa68b917b2ef91ca524db48c2caded279c0746bc37a9` |
| 39 | `theorem` | [Poly.denoteS_pow](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-pow.md) | 459 | `result-track:b20a7b7d2ca5db705e838a30abc22e6c691e52e8761ffdfcb678702c8a059a63` |
| 40 | `theorem` | [Poly.denoteS_pow_nc](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/poly-denotes-pow-nc.md) | 470 | `result-track:da23483b6a53f80b3039f61c13438ba8c5bc541a08d9598d06cd73ae1fd882fe` |
| 41 | `theorem` | [Expr.toPolyS_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-topolys-nonnegcoeffs.md) | 481 | `result-track:d6ab355bbfb67a814aa034ea06fcde61ed0c21eb8e23b35eab58bb086ede70e7` |
| 42 | `theorem` | [Expr.toPolyS_nc_NonnegCoeffs](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-topolys-nc-nonnegcoeffs.md) | 495 | `result-track:cf34b847bead2ff351b288ea505023b9eb20067f45eb42ffc30bce3d3e8adab1` |
| 43 | `theorem` | [Expr.denoteS_toPolyS](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-denotes-topolys.md) | 509 | `result-track:0c0bb4e10f6f45f2a0c3a4d39b76267d45f77b155eceb25f4eaa664a9e09d138` |
| 44 | `theorem` | [Expr.denoteS_toPolyS_nc](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/expr-denotes-topolys-nc.md) | 523 | `result-track:f11eea68915016212d087f4200e2d000baf87e6608655c707c754e583e188602` |
| 45 | `def` | [eq_normS_cert](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/eq-norms-cert.md) | 537 | `declaration-track:f6f79880b900a2c3c54ddc97998bcf72c76a4fcb74faecb78b1feebf8a53334d` |
| 46 | `theorem` | [eq_normS](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/eq-norms.md) | 540 | `result-track:ec2a5e93074d48a106e6b33e9a5093464121a3cc913689d4a1d3f939c6a77de7` |
| 47 | `def` | [eq_normS_nc_cert](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/eq-norms-nc-cert.md) | 547 | `declaration-track:9cec3422778c091581a9a264de245281d1409bc3ce43c166c1b8c87e9a7c7b68` |
| 48 | `theorem` | [eq_normS_nc](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/eq-norms-nc.md) | 550 | `result-track:4685769e61aa8a32423ed754734762e5c6720dfd555eb8ea364085728155e7b9` |
| 49 | `theorem` | [of_eq](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/of-eq.md) | 562 | `result-track:dc1a315c81e928d523b81e14365a0fdf9a5e9b6374ac57d5f620f2d1129a119f` |
| 50 | `theorem` | [of_diseq](../../../../CommutativeAlgebra/CommSemiringAdapterPublic.lean/declarations/of-diseq.md) | 567 | `result-track:24230541da4c6a90683ea925439d20ed6003e3319a36ffd5cb25acf55ef36f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15949acaf04adb17948bf4b41b53a5893f57b81efd8cb14d8cd3a2cc657cf5b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean","GRWTSK/_verification/specifications/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
