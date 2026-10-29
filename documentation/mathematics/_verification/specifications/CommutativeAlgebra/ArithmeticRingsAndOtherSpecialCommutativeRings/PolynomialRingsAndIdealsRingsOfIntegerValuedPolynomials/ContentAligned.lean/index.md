# Verification target: Content Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc591b897f746325bac6c20eb86c99d71263ff84",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc591b897f746325bac6c20eb86c99d71263ff84`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.EraseLead` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.CancelLeads` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimitive](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive.md) | 42 | `declaration-track:7624414698f523444e427a5f732c3f5373c4cb7395ba287da85230da81d2c69d` |
| 2 | `theorem` | [isPrimitive_iff_isUnit_of_C_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-iff-isunit-of-c-dvd.md) | 46 | `result-track:091936fe483c1209f887db07db2375f976baf6f19e80f1078644a2f8b7088b48` |
| 3 | `theorem` | [isPrimitive_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-one.md) | 52 | `result-track:9ed76dfb7a6accb41bdba89bc87d922b8f3a7b7baa5b1efd65e941fcac107d7e` |
| 4 | `theorem` | [Monic.isPrimitive](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/monic-isprimitive.md) | 56 | `result-track:42c5cb16a942c7b6a5ee110cc61e1982691cee1c6ea2dd3155d8eb6da1d86ec5` |
| 5 | `theorem` | [IsPrimitive.ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-ne-zero.md) | 61 | `result-track:8b3263f5ab402b024ac567147c408e01830b69a025e8e2c6530ad4ca0211276d` |
| 6 | `theorem` | [isPrimitive_of_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-of-dvd.md) | 66 | `result-track:d02c4c7fd935db51cde90e07f7f1cfae8a4404520e52d932240e66238a136aa4` |
| 7 | `def` | [content](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content.md) | 79 | `declaration-track:a34d2290ccaf2d03b5aed9d6def8c7af8725a5cf03736bb107b60cbca95b7ba8` |
| 8 | `theorem` | [content_dvd_coeff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-dvd-coeff.md) | 83 | `result-track:ce9db76c096818c3fc8baa5c575765e6e5970e4ecba50b04412ffca1f05bb54c` |
| 9 | `theorem` | [content_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-c.md) | 92 | `result-track:78529ce8b4de7290c4d9a2619ad672ac3bc9e6856e4c428c0699530e5f2a3630` |
| 10 | `theorem` | [content_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-zero.md) | 102 | `result-track:52c34edec03fd890805e3ba5a208c417b454c6d7435f01648a338718c6e3892f` |
| 11 | `theorem` | [content_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-one.md) | 106 | `result-track:0a4d6bafa0e0bd17e97f37022ac13d222fc26d9374b78cf0e1f9c37d63a1811e` |
| 12 | `theorem` | [content_X_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-x-mul.md) | 109 | `result-track:325b16120efac0b73478265ad4c7c7f99960e5fb6f06eabcd1b2b44c567f29ed` |
| 13 | `theorem` | [content_X_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-x-pow.md) | 134 | `result-track:42c7c3c29579a4befef54e6ac7325731cca5fea724fafb4dc53ca720de10f6ff` |
| 14 | `theorem` | [content_X](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-x.md) | 142 | `result-track:a07164ddb21afaff62b32369e404f3699d008205091f83f8272e2d7e2a7e57fc` |
| 15 | `theorem` | [content_C_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-c-mul.md) | 146 | `result-track:d2af1b72ea6b3b47fe9ad9391f6c6a34ccd7bb150e99a2ce023eba7579817e03` |
| 16 | `theorem` | [content_monomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-monomial.md) | 154 | `result-track:2f565cf11964c10ff9fcffae9af6acb0627daa42a3624910448777eef0428587` |
| 17 | `theorem` | [content_eq_zero_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-eq-zero-iff.md) | 158 | `result-track:0e40723ec2e86a8a48e424619510d2b32b7c70be0eab80656f3a9092bcf3c517` |
| 18 | `theorem` | [normalize_content](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/normalize-content.md) | 172 | `result-track:4a2e38cc913543da6d1187428e21a8d46a4300cfa2b103db1531f6f1d335d3b6` |
| 19 | `theorem` | [normUnit_content](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/normunit-content.md) | 177 | `result-track:11f6ade70478334250d1d6c44c4dd33f956ac079680e850a4ea28bb796c3a33b` |
| 20 | `theorem` | [content_eq_gcd_range_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-eq-gcd-range-of-lt.md) | 184 | `result-track:bb7d2252a2e88e79fb3c90cfdb091ca7bf707203381e4beb9bcc1a54486e5cd8` |
| 21 | `theorem` | [content_eq_gcd_range_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-eq-gcd-range-succ.md) | 198 | `result-track:774ec76cab669ac90fad3c819505db4abe47457afd841e0399e51acba94482e9` |
| 22 | `theorem` | [content_eq_gcd_leadingCoeff_content_eraseLead](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-eq-gcd-leadingcoeff-content-eraselead.md) | 203 | `result-track:488e8c614f05826b42a149d9f7e355b7939aca62ede4171b183195f6c099cc36` |
| 23 | `theorem` | [dvd_content_iff_C_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/dvd-content-iff-c-dvd.md) | 215 | `result-track:a19e3e0439eec02b23d0bf56dc8395c782d3a89f015bd5f2632ca1aac3605e67` |
| 24 | `theorem` | [C_content_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/c-content-dvd.md) | 227 | `result-track:871a8d5d13c3ef5ca202594e2ceba59c729efe06b25d18cecddf57d466333fd6` |
| 25 | `theorem` | [isPrimitive_iff_content_eq_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-iff-content-eq-one.md) | 232 | `result-track:5c09ee17a218a818362a3238f3501ede954abb71f9491ad13b5234f88bc38a13` |
| 26 | `theorem` | [IsPrimitive.content_eq_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-content-eq-one.md) | 238 | `result-track:fee0969848de46379e9f7f9fb620c718b8c2646b0d1f109db3a046f6afd0a210` |
| 27 | `def` | [primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/primpart.md) | 248 | `declaration-track:fd0e7feff641c6361165cb7669253c6480f9d3ef0a00e07cde1403d48fbbf7d4` |
| 28 | `theorem` | [eq_C_content_mul_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/eq-c-content-mul-primpart.md) | 252 | `result-track:331c9a026ee49506b38ec0dcf3cad9eca440a7448fbdfd9a7b2a46cff6cc9939` |
| 29 | `theorem` | [primPart_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/primpart-zero.md) | 259 | `result-track:0b0965c8abc5e7b9168839385c981c7ff1bc1f008fc868d2df4099e3a3714d68` |
| 30 | `theorem` | [isPrimitive_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-primpart.md) | 263 | `result-track:787ab21d3570ca697aa0dcf790e7a4936c3330be7f4ee62228c791e6aedc36a9` |
| 31 | `theorem` | [content_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-primpart.md) | 271 | `result-track:663e22fe5f963a96df916b0af843a6ca449be9a5abb8a2fa6b6190be11d052c7` |
| 32 | `theorem` | [primPart_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/primpart-ne-zero.md) | 275 | `result-track:c32ca79f202a31046492e6b1f907e10d0cfdde72e573cfa875212cb6fe1d2855` |
| 33 | `theorem` | [natDegree_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/natdegree-primpart.md) | 279 | `result-track:8e299196fd48bf5bf0bfdb505336fbb7dc93fb4611b34ca489a7affd13dad9e7` |
| 34 | `theorem` | [IsPrimitive.primPart_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-primpart-eq.md) | 288 | `result-track:626751838600739c654e8b08e4cf0aba4ae911fe8753357130bff8b8cc55dfb7` |
| 35 | `theorem` | [isUnit_primPart_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isunit-primpart-c.md) | 292 | `result-track:6f892225b7fd0f08aadacba8a489f64ca506f177fcce347b9a42c4b8dcf1740b` |
| 36 | `theorem` | [primPart_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/primpart-dvd.md) | 308 | `result-track:14cfdfab91fca877f4763ea70d467eb638b96c843b08760d2dbba45bde5be39f` |
| 37 | `theorem` | [aeval_primPart_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/aeval-primpart-eq-zero.md) | 312 | `result-track:4d8b9079679a15721612d1dc9c0305bc917210445e5b36ead2f25ea37bfa113e` |
| 38 | `theorem` | [eval₂_primPart_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/eval-primpart-eq-zero.md) | 322 | `result-track:6d48ced2348e419404ae1741c69243401c9a886736db3e281436eebf16b068e0` |
| 39 | `theorem` | [gcd_content_eq_of_dvd_sub](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/gcd-content-eq-of-dvd-sub.md) | 334 | `result-track:1db183c849ab61cb4d57588ba1783a98738c53669976d070fdc72c0afb453eef` |
| 40 | `theorem` | [content_mul_aux](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-mul-aux.md) | 347 | `result-track:3cd684a5e051ae04187a2a6f7782d189aa3bbc0ad3258edf6ab0e3db47275f28` |
| 41 | `theorem` | [content_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/content-mul.md) | 358 | `result-track:f1afa0292d6f7bc247a95a86516246e5e16c4d08fce7e2dc1ae09b08b9962676` |
| 42 | `theorem` | [IsPrimitive.mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-mul.md) | 406 | `result-track:6250fbd387254c6ab892ec1bfe74bed9fbbecb6469873239fb9a2ec76eb19720` |
| 43 | `theorem` | [primPart_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/primpart-mul.md) | 412 | `result-track:e029595c08d4d4c19d60249ee521ac5e37f0628ab6bd6ccb6a130b976d52bc19` |
| 44 | `theorem` | [IsPrimitive.dvd_primPart_iff_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/isprimitive-dvd-primpart-iff-dvd.md) | 423 | `result-track:866f11ef1975aac198693acb2e5a0a547aa197d25c35052cbacd528b0818809b` |
| 45 | `theorem` | [exists_primitive_lcm_of_isPrimitive](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/exists-primitive-lcm-of-isprimitive.md) | 431 | `result-track:83dafe970d19a42a2865f7ddbc6b5a310455bef1d0d1c25f5acb9261245c2754` |
| 46 | `theorem` | [dvd_iff_content_dvd_content_and_primPart_dvd_primPart](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/dvd-iff-content-dvd-content-and-primpart-dvd-primpart.md) | 474 | `result-track:a2887ab00b06ece9320142902cfed8930ef542c1c3eb058c63f743833bb2a797` |
| 47 | `instance` | [(anonymous)](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/instance.md) | 484 | `declaration-track:eb729e6975fe11eff6029129e1f2f02fcd431b41bf6e02c3344ce0014a7fb443` |
| 48 | `theorem` | [degree_gcd_le_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/degree-gcd-le-left.md) | 502 | `result-track:544806367826ef7bddd51f2ba0b712a7c453482e24528174f1019387269f4b2e` |
| 49 | `theorem` | [degree_gcd_le_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ContentAligned.lean/declarations/degree-gcd-le-right.md) | 507 | `result-track:1ded794159f8b54179278871af47f0f84715e5799fa3d80ebb9361b18986637f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3213b22796bd7dbd9e2ec4bee2adc6778b06ca429107d288709a203d181938d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
