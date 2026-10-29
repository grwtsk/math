# Verification target: Number Theory Chebyshev Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.FinsetLemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.InvLog` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psi](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi.md) | 81 | `declaration-track:1636e8491da76ba24b6758a777b12b165fc5cbf1a82a5756d9ea5af316962c74` |
| 2 | `def` | [theta](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta.md) | 88 | `declaration-track:089344fd1df498309b79dc68151189c46d434cf0f63b842853b19cee893bfd6a` |
| 3 | `theorem` | [psi_nonneg](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-nonneg.md) | 94 | `result-track:38266de686867321bc8bce44fd37fc6594b4f1f6e911ad977b645d7c3b563f4e` |
| 4 | `theorem` | [theta_nonneg](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-nonneg.md) | 96 | `result-track:57b85cfdd7aeef5e8e34c3ea8ffa586e7e9726f9fa19d012535bba249d84e7e1` |
| 5 | `theorem` | [theta_pos](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-pos.md) | 98 | `result-track:b25c3d1709ad7ae370aac5a46c7215f1e1b9e06a40ab8709f8824352a92518bc` |
| 6 | `theorem` | [psi_eq_sum_Icc](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-sum-icc.md) | 104 | `result-track:79cdd68e2da7ecfa10e05163f8d54da6c4c25ca6958c35c42b11f86acc09d238` |
| 7 | `theorem` | [theta_eq_sum_Icc](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-sum-icc.md) | 108 | `result-track:85efa429374829b7d78aec03ace668ce1aef71bd58274cd62021f94f6e155372` |
| 8 | `theorem` | [theta_eq_sum_primesLE](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-sum-primesle.md) | 112 | `result-track:ebd796d2792447fd9ccd1851105046d171d56cdadf2a805917ce9aaee25608ab` |
| 9 | `theorem` | [theta_eq_sum_primesLE_log](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-sum-primesle-log.md) | 116 | `result-track:8d5aa71f29860b996599684821f5e62cd7d18bf23450b4bbb7914c3b79ec3235` |
| 10 | `theorem` | [psi_eq_zero_of_lt_two](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-zero-of-lt-two.md) | 119 | `result-track:11564d81f695a95dc7770e3dcd48f247895d504b2d05a6786d17adae88cd89ec` |
| 11 | `theorem` | [psi_eq_zero_iff](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-zero-iff.md) | 128 | `result-track:59a4ceb65c6f9d351c715000684434f80f63c4d8870e39389c1f001d48adca17` |
| 12 | `theorem` | [psi_eq_zero_of_le_one](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-zero-of-le-one.md) | 136 | `result-track:1b51bec7c174dbd8bb233ff2e56567d5574ae321efb284a3ac83a2207196daf4` |
| 13 | `theorem` | [psi_zero](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-zero.md) | 140 | `result-track:60398dc1b69f99c0fff83599f72d85a784f0fdb89132fd3a921af5711d153e9b` |
| 14 | `theorem` | [psi_one](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-one.md) | 143 | `result-track:9e2e8d696bc056f1cf78e846d062cd1a0b629fb5942c1738a6023cf0a786af75` |
| 15 | `theorem` | [theta_eq_zero_of_lt_two](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-zero-of-lt-two.md) | 145 | `result-track:a2870fc6378e157b01b9efe4eb69deec18442697d8669adc73c856b85aa0bb7e` |
| 16 | `theorem` | [theta_eq_zero_iff](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-zero-iff.md) | 154 | `result-track:f8defb5b4a5c643a381849b48ec1248474d51f6cb1ae312e0e0ed30924038136` |
| 17 | `theorem` | [theta_eq_zero_of_le_one](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-zero-of-le-one.md) | 163 | `result-track:8c541ec41f3f19d40faf5f513ff003a3db34bc967b5b2e6e89616d274ec30c07` |
| 18 | `theorem` | [theta_zero](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-zero.md) | 167 | `result-track:e727d108d9a367bdfd7735420405c086f2edc21ca9b976570688c298688f1b2d` |
| 19 | `theorem` | [theta_one](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-one.md) | 170 | `result-track:fcb094bf4b8803117047d9e9ae4789c3fbcfbf323c089744f70b236c2c376de9` |
| 20 | `theorem` | [psi_eq_psi_coe_floor](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-psi-coe-floor.md) | 172 | `result-track:22048ad02515b6140af71e92b6e086e11f56bc5a47cb5d721d92eb4ab565a026` |
| 21 | `theorem` | [theta_eq_theta_coe_floor](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-theta-coe-floor.md) | 176 | `result-track:162a595e5f21d9fbfa7ab89f0097bee89a02556198344a8915e6e2044705b5cd` |
| 22 | `theorem` | [psi_mono](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-mono.md) | 181 | `result-track:b3fc585b317e2f6a273df9cfb69d87db5bc68a4314a4a2c8eccaf3f3bc149396` |
| 23 | `theorem` | [theta_mono](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-mono.md) | 188 | `result-track:c70faa9cd62f01a54d45ed14bfbd1d10fd5b025f01ca4e1663a480448650e07e` |
| 24 | `theorem` | [theta_eq_log_primorial](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-log-primorial.md) | 195 | `result-track:eab27df4ac9ff9cad8466690e04a35d80ac212d38cc69f7d54b473fa458de4f2` |
| 25 | `theorem` | [theta_le_log4_mul_x](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-le-log4-mul-x.md) | 202 | `result-track:1ab43d18cbb87afd62cc230ac7ffa6aa6d53d39e970542c1ec97eaa45c53b800` |
| 26 | `def` | [lcmUpto](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/lcmupto.md) | 221 | `declaration-track:802ac9edfb7a9d751cbb3f8ab127964995e1854fc2f0426ebc6b1868e2328a4a` |
| 27 | `theorem` | [lcmUpto_ne_zero](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/lcmupto-ne-zero.md) | 223 | `result-track:cea25ae7db80f6cf095703cbb0f3d3c377987e1e7c10cfc45a00e1cf098606d1` |
| 28 | `theorem` | [lcmUpto_pos](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/lcmupto-pos.md) | 225 | `result-track:4d45bcaa9c4f9e6a3b74b9838017de1a847645262d456a229e52ca4dd4b2af95` |
| 29 | `theorem` | [factorization_lcmUpto](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/factorization-lcmupto.md) | 227 | `result-track:37e40843e6fc450a3a2ae3dd0191964fed56a2ff67b94f04a91d08a322bd3006` |
| 30 | `theorem` | [lcmUpto_dvd_factorial](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/lcmupto-dvd-factorial.md) | 240 | `result-track:9388955ede78cb4c25ef7c7bf4f03f0939fea942b86a28f3b855e3a1bb3fef81` |
| 31 | `theorem` | [primeFactors_lcmUpto](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/primefactors-lcmupto.md) | 243 | `result-track:803ee5a62dbba962e24642bd9b43f60b3ae8568e36177ca51e96034763443b50` |
| 32 | `theorem` | [primorial_dvd_lcmUpto](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/primorial-dvd-lcmupto.md) | 252 | `result-track:f860f188b835824a18b51f56673528bace0b85ac49b3e8bcd95cc147ab1eeddb` |
| 33 | `theorem` | [lcmUpto_eq_prod](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/lcmupto-eq-prod.md) | 257 | `result-track:6ef10a8b25b195bcfdd402265cc9c02ae30bdd778458b6cf68891446b27763af` |
| 34 | `theorem` | [lcmUpto_eq_prod_pow_log](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/lcmupto-eq-prod-pow-log.md) | 264 | `result-track:8d90fc9144ae3b4990d273e88874079034c0ad2b1da968b377db7c3a94f62e33` |
| 35 | `theorem` | [lcmUpto_eq_prod_pow_floor](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/lcmupto-eq-prod-pow-floor.md) | 269 | `result-track:b0b10010428768d6f881fc9738c7911cfead5da198f4d6cf6a99d7fa625f6cae` |
| 36 | `theorem` | [psi_eq_sum_mul_log_prime](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-sum-mul-log-prime.md) | 277 | `result-track:c34c5084c91b01034e5947637e11e58918c2a033200690abc9d3031231a39aa5` |
| 37 | `theorem` | [psi_le_primeCounting_mul_log](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-le-primecounting-mul-log.md) | 301 | `result-track:441e6dc8b1abf0d925d13dc141f674cb7c17acfbe3629bf9252af782490e6bb3` |
| 38 | `theorem` | [psi_le_primeCounting_mul_log'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-le-primecounting-mul-log-source-edition-2.md) | 309 | `result-track:e220d0cd4d001afc517611459f7958bab1f488be3fdd10787173eac221537b42` |
| 39 | `theorem` | [psi_eq_log_lcmUpto](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-log-lcmupto.md) | 318 | `result-track:4555ae038038bc502afa0cd2c2e4e034b7e3d3c80431fd911cafe39ec2a1e5bc` |
| 40 | `theorem` | [choose_dvd_lcmUpto](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/choose-dvd-lcmupto.md) | 323 | `result-track:8b704dfa6478d3882c58a68dc8a196dc4142895e7af90e96c30d42c9c416e0ba` |
| 41 | `theorem` | [two_pow_le_mul_lcmUpto](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/two-pow-le-mul-lcmupto.md) | 329 | `result-track:edc6b08043a2d3a71d7db5ddaa7ef2ae324e99c54bb111b1498bc4d7284b71f5` |
| 42 | `theorem` | [sum_PrimePow_eq_sum_sum'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/sum-primepow-eq-sum-sum-source-edition-2.md) | 344 | `result-track:c491e1199e6dc205fba5a31ab12686102e0794561a24195db96edc7312a96160` |
| 43 | `theorem` | [sum_PrimePow_eq_sum_sum](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/sum-primepow-eq-sum-sum.md) | 383 | `result-track:501fff48c12601253ec1bc05b72a8f4e94462510be79415cd3ea203bac2b2b3f` |
| 44 | `theorem` | [psi_eq_sum_theta'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-sum-theta.md) | 388 | `result-track:20429d0e690ddc79bda2805712aa3581673b085b8544147934af5048bf9c6187` |
| 45 | `theorem` | [psi_eq_sum_theta](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-sum-theta-source-edition-2.md) | 395 | `result-track:29ec3ab9f84438e0fb0124c5fbdf8da31b41aaa674adc035ded93c91a27b748f` |
| 46 | `theorem` | [psi_eq_theta_add_sum_theta'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-theta-add-sum-theta-source-edition-2.md) | 399 | `result-track:93844d1fc9596a1f31e6b9d7230577cbfa94e0ae280bf4193d1bf6cb3783bd8a` |
| 47 | `theorem` | [psi_eq_theta_add_sum_theta](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-eq-theta-add-sum-theta.md) | 408 | `result-track:8775296502ed8384975569cbf825322923589efd505b4813de330eabaa8cae16` |
| 48 | `theorem` | [theta_le_psi](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-le-psi.md) | 412 | `result-track:6ebe0d3123913b87e4e87359e780392d08e006fb6a08bb7c890f6ee850b31d95` |
| 49 | `theorem` | [abs_psi_sub_theta_le_sqrt_mul_log](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/abs-psi-sub-theta-le-sqrt-mul-log.md) | 421 | `result-track:c5cf55f0a02ccb72254fbc99f4c94784235d5fbf8b3553ad1ec366ee2ce3e962` |
| 50 | `theorem` | [psi_le](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-le.md) | 452 | `result-track:3f6faa126246ab14fc16c3669ade8b059550432f33c26028858612a89ae255cb` |
| 51 | `theorem` | [psi_le_const_mul_self](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-le-const-mul-self.md) | 464 | `result-track:32e2f262cf8cd009e97cc16a9afc863c5c43d29c9b01fb63519a842737e2d24f` |
| 52 | `theorem` | [psi_sub_theta_eq_sum_not_prime](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-sub-theta-eq-sum-not-prime.md) | 480 | `result-track:049189603f66d954230f40dd8714d1a82130f655d8eaa35ce899d321013aab23` |
| 53 | `theorem` | [psi_ge](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-ge.md) | 489 | `result-track:4679b0c96de1ecf4265f52aab52006de308d24e562def00d1571628ae9a640f2` |
| 54 | `theorem` | [psi_ge'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-ge-source-edition-2.md) | 494 | `result-track:5a65f7785e21487bfadd8f434d6a4c8e5af283e690ce2e39a0e005d15f41c0ff` |
| 55 | `theorem` | [psi_sub_theta_le](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-sub-theta-le.md) | 501 | `result-track:a424bba349c9ac56e0a4a742a96783651eb20fa475af4b0cbaa14349c0073e11` |
| 56 | `theorem` | [theta_ge](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-ge-source-edition-2.md) | 506 | `result-track:c49fa0e84d987934bc299a9a17be6ca405c48bb269b90324205fdfd0ab604940` |
| 57 | `theorem` | [theta_ge'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-ge.md) | 511 | `result-track:a46e498b777612349805a3ad17aa235dfef416fdcef0aa95005b4f620eec775d` |
| 58 | `def` | [b](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/b.md) | 527 | `declaration-track:e6e7abf71747ceee05a7c61f2ed2d16e3c16f07363e0de00c4825ed555c365a3` |
| 59 | `def` | [c](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/c.md) | 529 | `declaration-track:66de605afdecbfaf4187285468129c9ebd4ee411c7c06314278f72962acf32bf` |
| 60 | `theorem` | [b_antitone](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/b-antitone.md) | 531 | `result-track:01c7fd4e0ae18b62da93aa39ae2a45d148f441ac54e4c13cab4dea3be14fde34` |
| 61 | `theorem` | [psi_pow_eq_sum_b](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-pow-eq-sum-b.md) | 540 | `result-track:f90911a30bd07138483b7e7eb0335c04ebc6293fe55044c7b41abe7c0ae70b13` |
| 62 | `theorem` | [sum_b_eq_b_add_sum_add_sum_add_sum](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/sum-b-eq-b-add-sum-add-sum-add-sum.md) | 548 | `result-track:cb2eb0b3b1e1d22c2fc8bb46a5d82732fa621f2f4cc641ae014db410b25fc408` |
| 63 | `theorem` | [psi_sub_theta_bounds](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-sub-theta-bounds.md) | 564 | `result-track:9109d5d9a06e9e3eff2b48ef6d31dee291e3c704eeb429c819ea8dbb8e5005eb` |
| 64 | `theorem` | [psi_sub_theta_le_psi_add_psi_add_psi](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-sub-theta-le-psi-add-psi-add-psi.md) | 592 | `result-track:d37162fc309ea131d219666d0a939a5e560f3464c0c443309777dd3fe3da5f6b` |
| 65 | `theorem` | [psi_sub_theta_ge_psi_add_psi_add_psi](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-sub-theta-ge-psi-add-psi-add-psi.md) | 598 | `result-track:0f083005d92f849af4d11f105af2014164bf44b37ac64072a096537008e3e2a6` |
| 66 | `theorem` | [psi_sub_theta_le_mul_sqrt](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/psi-sub-theta-le-mul-sqrt.md) | 603 | `result-track:93d7cf6b25f7dbd99a559b74b9474b13a72e72548bf512880eab404c5f3b5316` |
| 67 | `theorem` | [isBigO_psi_sub_theta_sqrt](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/isbigo-psi-sub-theta-sqrt.md) | 614 | `result-track:4b548f04e4fc03392ab644ecb4f85345852c7cca13f3e1baaa6307a58eee9934` |
| 68 | `theorem` | [integrableOn_theta_div_id_mul_log_sq](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/integrableon-theta-div-id-mul-log-sq.md) | 633 | `result-track:3aba3529231a695d655810c5622981f10b3f41a04e9c72400dbb840eb5eb363b` |
| 69 | `theorem` | [primeCounting_eq_theta_div_log_add_integral](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/primecounting-eq-theta-div-log-add-integral.md) | 643 | `result-track:3a87c9da3571a8b84b6459a6dd74b9ec22130db28f70706fda9652a5a26722b7` |
| 70 | `theorem` | [theta_eq_primeCounting_mul_log_sub_integral](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-eq-primecounting-mul-log-sub-integral.md) | 680 | `result-track:9b7c15b8e2afb8725ec204e875cb0dad618cd1b6ed157d1ba9ce129966210d46` |
| 71 | `theorem` | [intervalIntegrable_one_div_log_sq](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/intervalintegrable-one-div-log-sq.md) | 704 | `result-track:92fc1a6ecf9db355dd6ec8a4e9afb20e9512c67dbf2adbf5639d06815f7e2054` |
| 72 | `theorem` | [integral_1_div_log_sq_le](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/integral-1-div-log-sq-le.md) | 714 | `result-track:aebc94e8ac1e146c14669e8ff00d9a9ddbfc57b304da33d1bfa028c21f88dce8` |
| 73 | `theorem` | [integral_one_div_log_sq_le_explicit](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/integral-one-div-log-sq-le-explicit.md) | 724 | `result-track:e0b745ed4bda3fe702af45f4eccd0bc1bfa6364ff6c46b044db93a5b5645bfbc` |
| 74 | `theorem` | [sqrt_isLittleO](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/sqrt-islittleo.md) | 737 | `result-track:f13bb4475c25f7c961ee63bb5f7f662eb64f6cc938290861209cbb84daf5c691` |
| 75 | `theorem` | [integral_one_div_log_sq_isBigO](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/integral-one-div-log-sq-isbigo.md) | 748 | `result-track:af2e5a59b31473d8ff6840f8fd765197133e0114cbd5c60f4666102ef5712954` |
| 76 | `theorem` | [integral_theta_div_log_sq_isBigO](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/integral-theta-div-log-sq-isbigo.md) | 766 | `result-track:49cf865b2455bb455ec3e279ac87a91f7506fdb5356b1374a5d3e8233dd3e791` |
| 77 | `theorem` | [integral_theta_div_log_sq_isLittleO](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/integral-theta-div-log-sq-islittleo.md) | 791 | `result-track:4c0eb72fd99ee8f7b964160c90a6ec20d2c6b3da370578e2777b87b19c1283ef` |
| 78 | `theorem` | [primeCounting_sub_theta_div_log_isBigO](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/primecounting-sub-theta-div-log-isbigo.md) | 799 | `result-track:21c912afd3de071119ebb2d4e8955fde266d2e9b13456d4b33d47177a5af4dcf` |
| 79 | `theorem` | [eventually_primeCounting_le](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/eventually-primecounting-le.md) | 807 | `result-track:455cf51eb4a3882b27ae9a622e157e5d929b96b4e08a5db53067cc8cf3f184f4` |
| 80 | `theorem` | [pi_ge](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/pi-ge-source-edition-2.md) | 817 | `result-track:f2e3d2bff38d4819fe8dfe9ef25076aef909caf9ff9c4bcbfc0f3ab530612728` |
| 81 | `theorem` | [pi_ge'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/pi-ge.md) | 823 | `result-track:e0411544a4a31a19127f213be3601b6cea2e528863e7e72bb2087ff67f25d5d3` |
| 82 | `theorem` | [theta_le_pi_mul_log](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-le-pi-mul-log-source-edition-2.md) | 828 | `result-track:7704c7f35e7aa104fbce830565ac49277b1d4c7a99b3d53a4ff32759b73377c2` |
| 83 | `theorem` | [theta_le_pi_mul_log'](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/theta-le-pi-mul-log.md) | 831 | `result-track:419c261b61a0f09b6469befed2d37122d0bee2eda871cfa5984a72884aed17b5` |
| 84 | `theorem` | [pi_mul_log_sqrt_le](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/pi-mul-log-sqrt-le.md) | 834 | `result-track:a37077c70ae890bcd937f0ffe73c34ec617f7dc760191f23bbb8f538ea2d0b92` |
| 85 | `theorem` | [pi_le_log4_mul_div](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/pi-le-log4-mul-div.md) | 857 | `result-track:a03175a915bb6fb45a0958e8579c5c6afc6a859663fbef857ac477f7caad5908` |
| 86 | `def` | [evalTheta](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/evaltheta.md) | 871 | `declaration-track:61aa5bc6a2b5a400f1157344d1c65029d3edbbdc771b61b5c4c2a7df645a48f8` |
| 87 | `def` | [evalPsi](../../../../NumberTheory/NumberTheoryChebyshevNamespacedPublic.lean/declarations/evalpsi.md) | 881 | `declaration-track:2e904974912bb35b2a697d4b6a960aabda3b9b754face28943bc6a701eb2b312` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f6c806119792812b9eae5ef38db5773727024694c23318ab5faf1807a69ad1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
