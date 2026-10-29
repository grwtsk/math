# Verification target: Ideal Quotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84f59450cc93c76f2e4af824c4b1914da9bac6a4",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84f59450cc93c76f2e4af824c4b1914da9bac6a4`.

Source path: `GRWTSK/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:51138d0443b189a95b34109ddaf287d787c35dafce536b031010c8e31e600c20` |
| 2 | `instance` | [one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/one.md) | 60 | `declaration-track:7da8e1358b62d782531fc4ab538bc88655f6084ec0f0096d70faaaa5857822e5` |
| 3 | `def` | [ringCon](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/ringcon.md) | 65 | `declaration-track:eb2f168ecf1ba483f0e9843220861a99a58c4ee58db6c8dbec1bf7f5393b8e16` |
| 4 | `instance` | [commRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/commring.md) | 75 | `declaration-track:a26daab9bc169d8a6472d7f1a740000854637d34e446808f0f09a608afbbff0f` |
| 5 | `example` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/example.md) | 80 | `declaration-track:4988059e8f889523573c72d64434341b07fe1777220a72a67043e8cf4f7031a1` |
| 6 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/instance-source-edition-5.md) | 83 | `declaration-track:f52afd287ad6c9ba6b8fa87c9c1e68c9d4bf694eec3de3db1981eb783ef6a756` |
| 7 | `instance` | [smulCommClass](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/smulcommclass-source-edition-2.md) | 88 | `declaration-track:fdc3a765c86042193e116f73280e524c577bf858dcf64801b1b6eaad35b2580f` |
| 8 | `instance` | [smulCommClass'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/smulcommclass.md) | 93 | `declaration-track:2cc00ba79edfa61c9052017f8a2180b6684e7c409ccfc524a2ee063a0fe78db9` |
| 9 | `def` | [mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/mk.md) | 99 | `declaration-track:387f7e5a36a0ad6d62def33fef62b52acf9978a9bd4b0d14d5986a8c75336160` |
| 10 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/instance-source-edition-4.md) | 107 | `declaration-track:acdefb40f54df158922f53a070a0571114954eee65da784bda69dbe97505245e` |
| 11 | `theorem` | [ringHom_ext](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/ringhom-ext.md) | 115 | `result-track:9ea945ffb7de371f29f839887af3637096bbaab4bcfe5d176d32322a71e3edc8` |
| 12 | `instance` | [inhabited](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/inhabited.md) | 120 | `declaration-track:a1d579432deaccc2b86344880451e19277211d0ba1afe036fdeec2580dea37f1` |
| 13 | `theorem` | [eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/eq.md) | 124 | `result-track:49d0e3e1293b27b41d58130a5333c94eba5f99a1ba2b7856cf41b05447529e65` |
| 14 | `theorem` | [mk_eq_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/mk-eq-mk.md) | 129 | `result-track:2201f6ca19c9761f97a1f39b04afee5d8d925680643ea2cb6969a9830655340e` |
| 15 | `theorem` | [eq_zero_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/eq-zero-iff-mem.md) | 132 | `result-track:1d5e88ea6e8d97e67131c546428f79ac194833e770c7fb864148849219eb0b2b` |
| 16 | `theorem` | [mk_eq_mk_iff_sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/mk-eq-mk-iff-sub-mem.md) | 137 | `result-track:52d17abd6b9225c27af0727dcadb26be130f283464ac1d22038d433f749cb6a1` |
| 17 | `theorem` | [zero_eq_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/zero-eq-one-iff.md) | 140 | `result-track:4bbf784b2d417b2496c00d2d22ecc8912c23505579a4eab7e675b8e4f473c8e9` |
| 18 | `theorem` | [zero_ne_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/zero-ne-one-iff.md) | 144 | `result-track:488f48249cefc378036571906368b26bca95ab04bec7d1d936cbb578200f7ddf` |
| 19 | `theorem` | [nontrivial](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/nontrivial.md) | 148 | `result-track:67768fa2582f65fa8f5d6f6b8bb7fd4b4a9610c7e59e5e90ddbc606b274bcbb9` |
| 20 | `theorem` | [subsingleton_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/subsingleton-iff.md) | 152 | `result-track:b9fe7e029ffc9296a80684ee6df0d05ccd61d39897da815c93a995b877c7d716` |
| 21 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/instance-source-edition-3.md) | 157 | `declaration-track:717d0bd9a593f3d2bd927cc9b5dd23c0599db953971458c7721b1b809338ea98` |
| 22 | `theorem` | [mk_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/mk-surjective.md) | 160 | `result-track:9151747bd875b71fc467845606e4aa796fcc52166339e0130761d9026cf6f10a` |
| 23 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/instance.md) | 164 | `declaration-track:080fce729bfb6fc52e19aa6c32e9187985ef30485c2d06362ab6d9fa4070058c` |
| 24 | `theorem` | [quotient_ring_saturate](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotient-ring-saturate.md) | 169 | `result-track:14db1d23977cfa1709b14c986cd141d9526845b8a8be132e1920a3c87f253226` |
| 25 | `instance` | [noZeroDivisors](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/nozerodivisors.md) | 178 | `declaration-track:753b4f35aa0d4fd5683dedbc23ece40daefed9490b87b858dd1dbd818361fde8` |
| 26 | `instance` | [isDomain](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/isdomain.md) | 184 | `declaration-track:2f12d392fcd224746fc632a28a63f3d20081f55d480d9a6047cbd170699f8e69` |
| 27 | `theorem` | [isDomain_iff_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/isdomain-iff-prime.md) | 189 | `result-track:747dfb8fa053aeefacbdd19c8e4e3181d554aee4380107474e528b8d15e1697a` |
| 28 | `theorem` | [exists_inv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/exists-inv.md) | 198 | `result-track:08cc62caa3789890c2af8a761b8aea5c5e0b0bdee7fb8205429683b0d532de02` |
| 29 | `def` | [groupWithZero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/groupwithzero.md) | 216 | `declaration-track:df10fdeac9cf19174d7c473585201c127fc7b968bfd536af78a79841773b4581` |
| 30 | `def` | [field](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/field.md) | 229 | `declaration-track:7bcb2a1d71179326ba7e0fac04dea73f629228b9134e69ae0e6bfbf64f2230f8` |
| 31 | `theorem` | [maximal_of_isField](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/maximal-of-isfield.md) | 234 | `result-track:236df9a1371a91b791dba7e7e5ab85e405456af504bbf197912ea6bb1ab7c96f` |
| 32 | `theorem` | [maximal_ideal_iff_isField_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/maximal-ideal-iff-isfield-quotient.md) | 247 | `result-track:234c2e7e9c0106b5b81473b5bfd0d2a319df124b850535b0256191fe5a03d41c` |
| 33 | `def` | [lift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/lift.md) | 258 | `declaration-track:c464a3fbca913c2645b2838de532ce604f22c8647207ff7940639423bb2f95bc` |
| 34 | `theorem` | [lift_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/lift-mk.md) | 267 | `result-track:87a4f6749ce44366dc1253b78f98c3abe4444e5a911c66795f67435f0f5fbdd7` |
| 35 | `theorem` | [lift_surjective_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/lift-surjective-of-surjective.md) | 272 | `result-track:6baa8ef3dcb0f75d2e75a1f9871d6d1ab3e2f6f221a649376b0949e4c1611512` |
| 36 | `def` | [factor](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/factor.md) | 283 | `declaration-track:cea4b0c7ace1488d6e8012a3812d4b5faca55673ecb0736360a1a439cf8dbf8d` |
| 37 | `theorem` | [factor_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/factor-mk.md) | 288 | `result-track:e7326f70bfaea30205dca3e6fc4da2cb2a1c628f7299bafabde3d90556c70be2` |
| 38 | `theorem` | [factor_comp_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/factor-comp-mk.md) | 293 | `result-track:2492d34afcc8281186ac635c0b3cd0d8667114421f67ddb46303ce46fce551a7` |
| 39 | `def` | [quotEquivOfEq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotequivofeq.md) | 304 | `declaration-track:6d615a0f8cc81b6d32bff628f79677580e057fe00e358781ec1af0ab9bc17801` |
| 40 | `theorem` | [quotEquivOfEq_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotequivofeq-mk.md) | 312 | `result-track:71de082bc519de3c5bed496bd5f5563f5299f09e39fafddee567b71ee4fe542c` |
| 41 | `theorem` | [quotEquivOfEq_symm](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotequivofeq-symm.md) | 318 | `result-track:9835d854d2eff429b1c2f6af781b8d8511981f59b12eb4d6b1ac6d1b7fd8a665` |
| 42 | `instance` | [modulePi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/modulepi.md) | 327 | `declaration-track:3e5519ef0c2c6aa8a180bff399bded369da81aa6d57f81d56757600db8804aa8` |
| 43 | `def` | [piQuotEquiv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/piquotequiv.md) | 362 | `declaration-track:4fc2d47ac99c4ee4ff62944e99eb7301071b087a0a4911577fbf2fa7338e00d6` |
| 44 | `theorem` | [map_pi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/map-pi.md) | 381 | `result-track:5828afd206c8ec9631ce709a4979703e41a9db1cc7a10b8c5c914046b4944d16` |
| 45 | `theorem` | [exists_sub_one_mem_and_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/exists-sub-one-mem-and-mem.md) | 396 | `result-track:e9e8d67554c468fe17b2308cb663568b58ae661010024e394d0b41fa58bac5b9` |
| 46 | `theorem` | [exists_sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/exists-sub-mem.md) | 438 | `result-track:b7532b495627a7ea126a09056ab2e8c509b7d238c4a56abe6a493c26e65b527e` |
| 47 | `def` | [quotientInfToPiQuotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotientinftopiquotient.md) | 463 | `declaration-track:bc5d226c95aeb3ba1ec01a3bf92df0a561bc751438fc9056b53fe13a25694e62` |
| 48 | `theorem` | [quotientInfToPiQuotient_bijective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotientinftopiquotient-bijective.md) | 470 | `result-track:41da0e84c119e389d3a0d41de7cb7273a03da979b5d1fb753fc66b12262c2f82` |
| 49 | `def` | [quotientInfRingEquivPiQuotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotientinfringequivpiquotient.md) | 484 | `declaration-track:0ab737cd9042587f8927ad4c158b3ba6b614edc08abf008222eb736ce7161e37` |
| 50 | `def` | [quotientInfEquivQuotientProd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotientinfequivquotientprod.md) | 492 | `declaration-track:1fe598daddff3c5c66b0e54d88c31433130af4a5e6a6e7acab18c21f297f8982` |
| 51 | `theorem` | [quotientInfEquivQuotientProd_fst](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotientinfequivquotientprod-fst.md) | 505 | `result-track:988fab11bf8013791965dfca84a17358f76c98f74e46f1f4d03e6590c22364f8` |
| 52 | `theorem` | [quotientInfEquivQuotientProd_snd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/quotientinfequivquotientprod-snd.md) | 512 | `result-track:0f4e53554c092ff5578d60ec405d257f2cf8c8d22bbf4afeda467e00af662d1a` |
| 53 | `theorem` | [fst_comp_quotientInfEquivQuotientProd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/fst-comp-quotientinfequivquotientprod.md) | 519 | `result-track:67ff4f073aab53b2574ef839ec9cab80c3f4798cccd1d3854ae8eea209b1af7b` |
| 54 | `theorem` | [snd_comp_quotientInfEquivQuotientProd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotient.lean/declarations/snd-comp-quotientinfequivquotientprod.md) | 527 | `result-track:9e8f0ab5c82397b6ed30ee75bd149f34b27cbcd35c873359a9141980a97642ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed97687a5dd6925798d703d081dbf04771502a9cd69088f5c0fa9d3e10052199 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean","GRWTSK/_verification/specifications/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
