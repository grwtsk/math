# Verification target: Content Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b317f3e1371b32d47162d04e20a03d11533894c",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b317f3e1371b32d47162d04e20a03d11533894c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimitive](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive.md) | 45 | `declaration-track:20db176d204a2b21a2b44d7ab0f7312c7e4d66281a2e67022cb819a343229003` |
| 2 | `theorem` | [isPrimitive_iff_isUnit_of_C_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-iff-isunit-of-c-dvd.md) | 48 | `result-track:18ef4d78bd7842f37ea629877e8be500575d29c2b58c925dc9a3fd99c8ace6f0` |
| 3 | `theorem` | [isPrimitive_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-one.md) | 52 | `result-track:5e132ae1b271df9972e2673e49827d8e578594be5f6bc6dc01c7a1c7d6210572` |
| 4 | `theorem` | [Monic.isPrimitive](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/monic-isprimitive.md) | 55 | `result-track:a167b51a4966928238c4068c752f9e8f154a7fe0859cd1fa00cace6459691611` |
| 5 | `theorem` | [IsPrimitive.ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-ne-zero.md) | 59 | `result-track:0f3935a9e5d916aa793424bdfc40b57771fde5bf1a77ddd30178bd3f4000d11c` |
| 6 | `theorem` | [isPrimitive_of_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-of-dvd.md) | 63 | `result-track:6fc1a7ebb4ce575aaf2d646e92092e410e84402d3f26eccf2b4ce41c8ea3a046` |
| 7 | `theorem` | [_root_.Irreducible.isPrimitive](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/root-irreducible-isprimitive.md) | 67 | `result-track:1481ebbc774af4eefa54e4918ad7ec841907ac3e32ab9bcd742d8a9bc24dc562` |
| 8 | `theorem` | [isPrimitive_iff_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-iff-ne-zero.md) | 78 | `result-track:8c51d79288e3bc6c2b9193137c696332fe088500e420918ad53d97f9277d5967` |
| 9 | `def` | [content](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content.md) | 90 | `declaration-track:5ec754d9fb278c255973d064867589c353bf990e319ffa2e8798fa076a5b1326` |
| 10 | `theorem` | [content_dvd_coeff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-dvd-coeff.md) | 93 | `result-track:dfc44ad4ced58f7b3d960756659f47975709449c740e3502c4039ba4ce7cf038` |
| 11 | `theorem` | [content_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-c.md) | 101 | `result-track:e2dedd429126c33b0cf53885b127683603db6a20ae43878b7c470e42da32150d` |
| 12 | `theorem` | [content_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-zero.md) | 109 | `result-track:8285f209d49230403b2d3127ac99e2b3c31df0152c804103b3a41be82852ffa2` |
| 13 | `theorem` | [content_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-one.md) | 112 | `result-track:ea138d724b9b5635385a525db55d2eaa11edb3577fe86ca2c83ee3ec0d248227` |
| 14 | `theorem` | [content_X_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-x-mul.md) | 114 | `result-track:b4ef3ee978a089ea308f6720580cdd19b98c95642f0ab4f8f77d38201ba8136f` |
| 15 | `theorem` | [content_X_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-x-pow.md) | 133 | `result-track:dd3ca36548aab8feede926936044b8048014e17793e05d57fb16abddb4cfdeb1` |
| 16 | `theorem` | [content_X](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-x.md) | 139 | `result-track:8981ad5e7981c108473114b6b5d87d4e042e9755cebf4d08d22f5a4bfbaa7546` |
| 17 | `theorem` | [content_C_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-c-mul.md) | 141 | `result-track:65b3cd56d901ca3b407ed29fcf821659ec9f3311a3ad70dc5a0967465f110814` |
| 18 | `theorem` | [associated_content_C_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/associated-content-c-mul.md) | 147 | `result-track:bb3c2521803bc72fe1f739b8ff9f76848111c278cf74d190608e8cf9c657968b` |
| 19 | `theorem` | [normalize_content](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/normalize-content.md) | 154 | `result-track:6d1ebbacab2016fc44934af1f2afee2e00ff6711d413abbef12d7fb5c380b541` |
| 20 | `theorem` | [content_monomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-monomial.md) | 158 | `result-track:0688ec28636911fdd3a7663e8c12147eedc587b44e49cb0f5e8eeb84c4b7a8e3` |
| 21 | `theorem` | [content_eq_zero_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-eq-zero-iff.md) | 163 | `result-track:97727321187e436b564ae5bf5c2ba9329ae06a1c5fa20f7345e105748301ca30` |
| 22 | `theorem` | [normUnit_content](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/normunit-content.md) | 172 | `result-track:0ae9d31c86b9b3a61e39698512cc26801429c9db6779ecb8c8fa6f064fb8c6ca` |
| 23 | `theorem` | [content_eq_gcd_range_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-eq-gcd-range-of-lt.md) | 179 | `result-track:4b13ba3666c2df7bb39282af77a104798f2eea41355952b2fceb40671c114875` |
| 24 | `theorem` | [content_eq_gcd_range_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-eq-gcd-range-succ.md) | 187 | `result-track:834939d9f8fde4c308e206b944ca03844a081e2421aa688b15717d4af555c780` |
| 25 | `theorem` | [content_eq_gcd_leadingCoeff_content_eraseLead](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-eq-gcd-leadingcoeff-content-eraselead.md) | 191 | `result-track:99a111f3cde41f4b6df8122c74814947536d2a9789f85fadcdf6e8f1cf991d8b` |
| 26 | `theorem` | [dvd_content_iff_C_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/dvd-content-iff-c-dvd.md) | 202 | `result-track:ea540fd0a08feaba69ca85f451ef09e98e6e8962c19e6e2d575d317200759e3a` |
| 27 | `theorem` | [C_content_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/c-content-dvd.md) | 212 | `result-track:4be3908817be1d6a69767beef4d1624e0501ef4ee81d0160dfe68d6f7fbe3772` |
| 28 | `theorem` | [isPrimitive_iff_content_eq_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-iff-content-eq-one.md) | 215 | `result-track:7679cb8c79a7451387c984f06a26f4c8e6549e70958a1ffb4addb121cff1d3e5` |
| 29 | `theorem` | [IsPrimitive.content_eq_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-content-eq-one.md) | 220 | `result-track:ca60838ce5b5e398bbbe670e436a96cb7fd17ca342af31f223fa45737019380a` |
| 30 | `def` | [primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/primpart.md) | 227 | `declaration-track:e122adfffc7827529d248ea24ee94aa717f8cd8ae9d488b8635d4b1cce49ea55` |
| 31 | `theorem` | [eq_C_content_mul_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/eq-c-content-mul-primpart.md) | 231 | `result-track:9776c459144d6d58703074b8fd417a9deb6c7bb69f75a6d6b5b2773ec7a2724b` |
| 32 | `theorem` | [primPart_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/primpart-zero.md) | 236 | `result-track:8b4dde32adca026d61dacf040bf8c4d4089edc7ced78ae6a4d8d57a5a78b74ce` |
| 33 | `theorem` | [isPrimitive_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-primpart.md) | 239 | `result-track:496a7c969f8980214740d6664fb68f995fab206920d98b25180b5c16bd1d14fe` |
| 34 | `theorem` | [content_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-primpart.md) | 247 | `result-track:13d794078809c2cef19699a0fbf8435419600444770a0ed61451f6baa22926f5` |
| 35 | `theorem` | [primPart_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/primpart-ne-zero.md) | 250 | `result-track:ad14c9db959b10fc043c3d635a555d7065718830e1196fd24da331086d8d2b76` |
| 36 | `theorem` | [natDegree_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/natdegree-primpart.md) | 253 | `result-track:56ddbf6ded1652011a20402c099cc91d01a9a3cfba1dc0b814f205b00549d0d5` |
| 37 | `theorem` | [IsPrimitive.primPart_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-primpart-eq.md) | 262 | `result-track:81b83f31bdfa0148f353e3654309300598c3e824b835477002cc35907c68759c` |
| 38 | `theorem` | [isUnit_primPart_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isunit-primpart-c.md) | 265 | `result-track:78ac187468b01ee60f28f05bf909791abb6da2a2ccafe8e1b848e4d616df87e8` |
| 39 | `theorem` | [primPart_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/primpart-dvd.md) | 279 | `result-track:fe4c00a0e062c5f12722a2787360743b3831d6d0e22aa6fd92e6c88e09e2ad93` |
| 40 | `theorem` | [aeval_primPart_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/aeval-primpart-eq-zero.md) | 282 | `result-track:ebe5a280b34a24f5247577c82aeaac5283f20dd1d3c7ec678c8de0a2a5725ba4` |
| 41 | `theorem` | [eval₂_primPart_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/eval-primpart-eq-zero.md) | 291 | `result-track:1420dceb3ec36a4a232abd41cf579e8f97c806d8d8bfd4aef12bf41afb985e8b` |
| 42 | `theorem` | [gcd_content_eq_of_dvd_sub](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/gcd-content-eq-of-dvd-sub.md) | 300 | `result-track:15a040d6dd32008d631e16787e11685ec7194e1ae26a90acaf7c8f01a65cd012` |
| 43 | `theorem` | [content_mul_aux](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-mul-aux.md) | 312 | `result-track:5f17b85d567c012a4241dabdae0101b541737689da58428370fd3ffa3576a0aa` |
| 44 | `theorem` | [associated_content_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/associated-content-mul.md) | 321 | `result-track:fb3dde20791d98d47bc76660190977097c9be6f65845525f75b0a39512aae2e8` |
| 45 | `theorem` | [content_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/content-mul.md) | 369 | `result-track:3665154ff82c3c386c5225f87d9fd253b59de82c280c5c0f1304d5fb98da3a44` |
| 46 | `theorem` | [IsPrimitive.mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-mul.md) | 373 | `result-track:6389bc759ee05f814ba0976fd2f0556397c7e4ea10782bbbe6b30d27a1d18a4e` |
| 47 | `theorem` | [associated_primPart_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/associated-primpart-mul.md) | 379 | `result-track:2c982f14b5e305e7c374cf3f9e2c366aa1df23f9163c4fca0893c12e0395a415` |
| 48 | `theorem` | [primPart_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/primpart-mul.md) | 389 | `result-track:d2bcb6146268a0ac0d5714234458cc9333873672a0712d735c0d59a891124728` |
| 49 | `theorem` | [IsPrimitive.dvd_primPart_iff_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/isprimitive-dvd-primpart-iff-dvd.md) | 399 | `result-track:6fcc5c56c24bf25e41fc1de4f509939cc3864069fb5ced7224ce0831a8471a34` |
| 50 | `theorem` | [exists_primitive_lcm_of_isPrimitive](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/exists-primitive-lcm-of-isprimitive.md) | 405 | `result-track:9ce1d1abfa8d7c32ba93fa59f98b975cfe5ae5b58852da91fabc006a1b264fad` |
| 51 | `theorem` | [dvd_iff_content_dvd_content_and_primPart_dvd_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/dvd-iff-content-dvd-content-and-primpart-dvd-primpart.md) | 448 | `result-track:0aebac92bec1facd6850dca0cd41d36e129025c11da68398c02e97271de9a456` |
| 52 | `instance` | [normalizedGcdMonoid](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/normalizedgcdmonoid.md) | 459 | `declaration-track:fdf74e3214a7a5c247c70aeb2970140290fe41ee2e4b23702e675967ff187323` |
| 53 | `theorem` | [degree_gcd_le_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/degree-gcd-le-left.md) | 479 | `result-track:4d6fd8dce12d64774508f40ef21b42a039be8dcd96f73c3a9d63779e66712176` |
| 54 | `theorem` | [degree_gcd_le_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/degree-gcd-le-right.md) | 483 | `result-track:e4f59be23f736a94f21f8ee45b9c053c37b29ce4eb694ed31b8ed63c2ece071f` |
| 55 | `instance` | [(anonymous)](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/instance-source-edition-2.md) | 489 | `declaration-track:f324acea835881ba04e156cdbfb9f5ba8919d57e51bc8455232efb0ad168c9d4` |
| 56 | `instance` | [(anonymous)](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentPublic.lean/declarations/instance.md) | 494 | `declaration-track:f2edcbe52c53645d99cff927381399cea690707e7473e5d334a74053b2bb51c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6292a67e4be7aa59e6ce7e21636fe1c237829752cce70f6783904e14665f5d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
