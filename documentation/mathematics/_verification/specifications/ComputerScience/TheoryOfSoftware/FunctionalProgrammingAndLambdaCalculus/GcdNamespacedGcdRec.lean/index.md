# Verification target: Gcd Namespaced Gcd Rec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13efaa95a5b4298bf048e76cc7f610bdab319ba4",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13efaa95a5b4298bf048e76cc7f610bdab319ba4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GCD/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_rec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-rec.md) | 24 | `result-track:0629f7e02fd6b63de0f3a2b0b85aff5a8a40d983e14c0887d35a8728c39160ba` |
| 2 | `theorem` | [gcd.induction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-induction.md) | 29 | `result-track:17ecf415a1c979ba1878019b68bdeb0bb4346f7181649495bf8c1059348626be` |
| 3 | `def` | [lcm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm.md) | 38 | `declaration-track:70422e4853c5f4be590c3c3e54ba0ed3b821d09f13749830be1c4747f3258870` |
| 4 | `def` | [Coprime](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime.md) | 41 | `declaration-track:c354c41da0c032d735b8df980121fd02a7e08912b675d14be8743188c55a903d` |
| 5 | `theorem` | [gcd_dvd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd.md) | 45 | `result-track:fc7be912156eed5a0f7e52f061d6802c1559ade629e06ff71d33d6a118f50044` |
| 6 | `theorem` | [gcd_dvd_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-left.md) | 50 | `result-track:57a8b0d252d19d0ed62bd09c975caf3f4dc1a15d3051b32997f19ed7d223f25e` |
| 7 | `theorem` | [gcd_dvd_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-right.md) | 52 | `result-track:00098cd3d53409ff7ac97535b0da06dc45151dd44604a22c74896d6af9aa991f` |
| 8 | `theorem` | [gcd_le_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-le-left.md) | 54 | `result-track:a0dee3f8b162eabc987ebd3b54ebe8c64778aeec171ec73e6e4d251da2c07a68` |
| 9 | `theorem` | [gcd_le_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-le-right.md) | 56 | `result-track:ce2d5f63f566d0d13ad75ddd1a31606d612827642840a27a81f971685c29e7ef` |
| 10 | `theorem` | [dvd_gcd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/dvd-gcd.md) | 58 | `result-track:d2a0ac76658553feeba43369e7b0f6fc390e6c823be15c85c5ee9ecc8afea92b` |
| 11 | `theorem` | [dvd_gcd_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/dvd-gcd-iff.md) | 63 | `result-track:5bda94756dd0c05e4027262387539782632ff5145dc46235b5ff295de06a06cd` |
| 12 | `theorem` | [gcd_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-comm.md) | 67 | `result-track:2587d30cbd352383c7275638f1a2e26647ff23c0840802789fce0705c35d050f` |
| 13 | `theorem` | [gcd_eq_left_iff_dvd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-eq-left-iff-dvd.md) | 72 | `result-track:38d87b2568c5c1ffcc9be42ed62708c6eec7f48a493fa41bde7873745b7d3bd5` |
| 14 | `theorem` | [gcd_eq_right_iff_dvd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-eq-right-iff-dvd.md) | 76 | `result-track:0c55486842e2f0a6ebf38aafd6ef3868d9d878fd1206420efdc16c369e2ed506` |
| 15 | `theorem` | [gcd_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-assoc.md) | 79 | `result-track:e703a955beddbbba8bc4891cd3d642d7f1100b4b7da5fddb2b3fd36f0abff187` |
| 16 | `theorem` | [gcd_one_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-one-right.md) | 90 | `result-track:c4e0e80f395921e82dd2d70ddc8268090be6124a0ef6742b6da2c2ea61efba2b` |
| 17 | `theorem` | [gcd_mul_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-left.md) | 92 | `result-track:fb5d54c06f087d8f5c807681d218a66dbe2000ddcd87c3d3e498ae2adabf4435` |
| 18 | `theorem` | [gcd_mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-right.md) | 97 | `result-track:c3b7e01aa27a1519026890e6313f7fcbf83f2b815c5eb847d048bafdb1566d34` |
| 19 | `theorem` | [gcd_pos_of_pos_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-pos-of-pos-left.md) | 100 | `result-track:04c3203be12bc4f802a86a33fde5106b65d3b62959cedbda35c74dcfc5c9d745` |
| 20 | `theorem` | [gcd_pos_of_pos_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-pos-of-pos-right.md) | 103 | `result-track:4755acfda772a003a7657b0c1df109355200a05221358299a9c1e768628b7f0f` |
| 21 | `theorem` | [div_gcd_pos_of_pos_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/div-gcd-pos-of-pos-left.md) | 106 | `result-track:a6a1715c5722c0a7623b15752eac485b50aef720288436ffd4bb057377f3b335` |
| 22 | `theorem` | [div_gcd_pos_of_pos_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/div-gcd-pos-of-pos-right.md) | 109 | `result-track:3a84d0192a7a962e45de8b62c9815a04bd1642455d75cec2ef73eba6a089917a` |
| 23 | `theorem` | [eq_zero_of_gcd_eq_zero_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/eq-zero-of-gcd-eq-zero-left.md) | 112 | `result-track:ff3c4ec44b858ad6dc1d899d47072343e8dde9a80da34469cf360b069123b2f0` |
| 24 | `theorem` | [eq_zero_of_gcd_eq_zero_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/eq-zero-of-gcd-eq-zero-right.md) | 117 | `result-track:52f8cddac57ef62458f3047117cf6b0e91fd94065742262d8e2c4ae9707b700b` |
| 25 | `theorem` | [gcd_ne_zero_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-ne-zero-left.md) | 121 | `result-track:2b3ef169331d8e0e914edd1665b6f1398d52e0205973d6588b9fa5c50773db87` |
| 26 | `theorem` | [gcd_ne_zero_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-ne-zero-right.md) | 123 | `result-track:351c9830e4e0efaf8817f2a8addbb951fb81bad8437b70e8a9bb80c9ac109171` |
| 27 | `theorem` | [gcd_div](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-div.md) | 125 | `result-track:9d1784a3edcdbe66e0f67d5d1eb8cc6e2b5a0fcaebc5f7fec4af2926274cf5af` |
| 28 | `theorem` | [gcd_dvd_gcd_of_dvd_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-gcd-of-dvd-left.md) | 134 | `result-track:ecc294dc440b960abd7f33960d7df481edcf2abbfccd7efd515b62b0d48c2f12` |
| 29 | `theorem` | [gcd_dvd_gcd_of_dvd_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-gcd-of-dvd-right.md) | 137 | `result-track:39c65f9602f64d93b42624b29bee8d967988703a8d26d9211b326078166a2cb3` |
| 30 | `theorem` | [gcd_dvd_gcd_mul_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-gcd-mul-left.md) | 140 | `result-track:48828cc99f26035b1b0b2e31d252880554d673ecc9d39c85d5ba79cf6774681d` |
| 31 | `theorem` | [gcd_dvd_gcd_mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-gcd-mul-right.md) | 143 | `result-track:4ee7cf51979432afa1989dc918fc8b10d37d357e6f8b2401b0c1ba82f61716d8` |
| 32 | `theorem` | [gcd_dvd_gcd_mul_left_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-gcd-mul-left-right.md) | 146 | `result-track:c7dc8619f3e84ae9ed5aa14dac685e7352cc9b54dfc55d8052b3aae101df9d35` |
| 33 | `theorem` | [gcd_dvd_gcd_mul_right_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-dvd-gcd-mul-right-right.md) | 149 | `result-track:3136bfdf7d3b0e1a0779b6f1a10d599f24c64a93b53cd2b1d3c658171dab64ed` |
| 34 | `theorem` | [gcd_eq_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-eq-left.md) | 152 | `result-track:b7289ce1e3ea1cc5e88e0ab1e4a38e032be3027b6ae6892d837f7da85b043217` |
| 35 | `theorem` | [gcd_eq_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-eq-right.md) | 155 | `result-track:c8901928653909c3f3fc61790d5ae087687726d8445aa5c6e91333fcd32f7cca` |
| 36 | `theorem` | [gcd_mul_left_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-left-left.md) | 158 | `result-track:e622f84e2dad774faa4c300b9305444164c7d1a591d4e851ae0c9392dc450182` |
| 37 | `theorem` | [gcd_mul_left_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-left-right.md) | 161 | `result-track:24d148a2541c3cef093a4b2e3c925b2d1460e62116a294186647dd74d9720b5b` |
| 38 | `theorem` | [gcd_mul_right_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-right-left.md) | 164 | `result-track:577b83a4571e46ae0cd85f3bc8c0d4a948f7b4980b2be9f444fd50c043e46eb2` |
| 39 | `theorem` | [gcd_mul_right_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-right-right.md) | 167 | `result-track:9632ba6c78cb54b1fd40d51959da1f61a1b808f22a6ab12d30c3357ab20fd770` |
| 40 | `theorem` | [gcd_gcd_self_right_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-gcd-self-right-left.md) | 170 | `result-track:281c88fdc026d2ed4abe2b3a6bcfd9805a52e8a9107b9b3e9a4b07249d4422e1` |
| 41 | `theorem` | [gcd_gcd_self_right_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-gcd-self-right-right.md) | 173 | `result-track:4d3c1a6b6434f0f58bb416998b58f6ebcc2c17006b866bfc3f59e708f140a46a` |
| 42 | `theorem` | [gcd_gcd_self_left_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-gcd-self-left-right.md) | 176 | `result-track:a8236f7798ca27dc57c0a70ea0744d197ca77f7244fdac87f5789700e0dcde60` |
| 43 | `theorem` | [gcd_gcd_self_left_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-gcd-self-left-left.md) | 179 | `result-track:e5380498bd4ee948fbc7f003969686a30fc1b5aa4d5e70ab19ccbba567366272` |
| 44 | `theorem` | [gcd_add_mul_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-add-mul-self.md) | 182 | `result-track:8e215a7fab2551294c35fc37198a365a7553ffb077cef6f9f6590e8273703f80` |
| 45 | `theorem` | [gcd_eq_zero_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-eq-zero-iff.md) | 185 | `result-track:f4cbe856822b45c95b658c639637b42f12b29230cf88f2b0563dcff855d5dfdd` |
| 46 | `theorem` | [gcd_eq_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-eq-iff.md) | 190 | `result-track:d55a7eba9943aad26cb7714fe70d5271fe0111cb107dfa7ed9b9fafb21fb38d6` |
| 47 | `theorem` | [lcm_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-comm.md) | 204 | `result-track:174788e0f552633b867ec185326ea885c23ef32bf29e89f868b789d6c8c0f5a1` |
| 48 | `theorem` | [lcm_zero_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-zero-left.md) | 207 | `result-track:97d8a1d58c1f4d200ab510ca77ab2d8d43693d6893250d58147aa8a468b81fe6` |
| 49 | `theorem` | [lcm_zero_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-zero-right.md) | 209 | `result-track:4236e03ce88413e72176163276e11dcde765062b95f7a5df51bce21613a3562a` |
| 50 | `theorem` | [lcm_one_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-one-left.md) | 211 | `result-track:cdf17a9efd17854903a1bfb3b393d45c46937222a3d2919e5a41f1a73e24550b` |
| 51 | `theorem` | [lcm_one_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-one-right.md) | 213 | `result-track:47fcfa63ad596a6e61ce6b3660d7517fc179de6d284b923fda7caf6090f5b9c4` |
| 52 | `theorem` | [lcm_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-self.md) | 215 | `result-track:c8596d70de9436956db7a345008a90ab8bc5a4f17d306d313e50e5644f5a4fbd` |
| 53 | `theorem` | [dvd_lcm_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/dvd-lcm-left.md) | 220 | `result-track:39d56c050481166d8c43fbd3544eb857d7f3ec3113c5b7953e44cba2d42292fe` |
| 54 | `theorem` | [dvd_lcm_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/dvd-lcm-right.md) | 223 | `result-track:4541211e24edb465ba71ecb74bf38bedd8992ed81f81aea2532efd528f34e7ee` |
| 55 | `theorem` | [gcd_mul_lcm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-lcm.md) | 225 | `result-track:c4eb4aef652d92a3eee567c97f3c2987e1d5e454b23b7a545df676f8cace48c6` |
| 56 | `theorem` | [lcm_dvd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-dvd.md) | 228 | `result-track:b3ef7a363d686070b466db5c7d0e7969e93f76117b87f07c8f39a0911b6b4602` |
| 57 | `theorem` | [lcm_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-assoc.md) | 236 | `result-track:baf508fbd55050970504033ca41adad07d46b4400cfada25f17bde5af0cff9ba` |
| 58 | `theorem` | [lcm_ne_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/lcm-ne-zero.md) | 247 | `result-track:8f1086e152af9fde78751b64f5aaf1ba609599fcdf14894fa0bf15b915c94724` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/instance.md) | 261 | `declaration-track:c69512cf07fb9366515d40acbd78262ac07352ee49b6f695b0686048970a5817` |
| 60 | `theorem` | [coprime_iff_gcd_eq_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-iff-gcd-eq-one.md) | 263 | `result-track:a0583d3220cbe8a532d8ee341d231ddc3efee5102dc52c997cbd5c1119e584f6` |
| 61 | `theorem` | [Coprime.gcd_eq_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-eq-one.md) | 265 | `result-track:2e96faf4a3d89e32bd5e33bd3843e00d49cb91b181be924a1c9bc39317263aa2` |
| 62 | `theorem` | [Coprime.symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-symm.md) | 267 | `result-track:9fb2577ec09aa6b62ab13207a1bfe7eafb90a23e188c8ba5bc08a2aee083e71f` |
| 63 | `theorem` | [coprime_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-comm.md) | 269 | `result-track:aaff9b36ef1307a5318a69eb8feeb24f1c00fe5ac5d5ca9ce5cb6c5fe02ead22` |
| 64 | `theorem` | [Coprime.dvd_of_dvd_mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-dvd-of-dvd-mul-right.md) | 271 | `result-track:f795c1df8b901368cf8ec2e112ff6772b8bf4d23efafb6d3450c472c46ccdb59` |
| 65 | `theorem` | [Coprime.dvd_of_dvd_mul_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-dvd-of-dvd-mul-left.md) | 275 | `result-track:5e39ed329f0348909ca67f3847eb656db89ba6c48d22cd26921fcc62d15380a5` |
| 66 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-mul-left-cancel.md) | 278 | `result-track:b5a0c024b5898dc2166319ee46fbbcab0f2857363b7bfd4612dd0f4073ff32d4` |
| 67 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-mul-right-cancel.md) | 285 | `result-track:c25fefd6ac2d4169868ead7b352ad061ab0b7c08f3702f006fb44a0a9d50ab3f` |
| 68 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-mul-left-cancel-right.md) | 288 | `result-track:659fa455fab5703a7a9e417b6558d0dd1460401ea5390d03c064b2242e81c839` |
| 69 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-mul-right-cancel-right.md) | 292 | `result-track:8b9797b000addf1918349616f7f07d12fec39565c60b24b8aaa0e1923b64c0a0` |
| 70 | `theorem` | [coprime_div_gcd_div_gcd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-div-gcd-div-gcd.md) | 296 | `result-track:31066bc975fc4d196529de2eaf43c2389e3886f5f1b6a819618ca375c8ada35e` |
| 71 | `theorem` | [not_coprime_of_dvd_of_dvd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/not-coprime-of-dvd-of-dvd.md) | 300 | `result-track:82c0bfa560836690cf859ad70f82596a1ccbb405f2669e0d9a1565e78e1b1066` |
| 72 | `theorem` | [exists_coprime](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/exists-coprime.md) | 304 | `result-track:0da4d351561e4ea190d0b1f3106c2322be489a046eef550f3d5a9880e759ae3b` |
| 73 | `theorem` | [exists_coprime'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/exists-coprime-source-edition-2.md) | 310 | `result-track:fd569c165dc37385634b3cd13ee7499c1288e3b0e0185053147d0748122e0102` |
| 74 | `theorem` | [Coprime.mul](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-mul.md) | 314 | `result-track:bcf40d78efb0958883aac975b90743cd97389182d919677bbca8e3eb63f7edb6` |
| 75 | `theorem` | [Coprime.mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-mul-right.md) | 317 | `result-track:a5cae2694b524ac674bee0dc6d360862951a88060b58c46fc6b4e0d953fe4409` |
| 76 | `theorem` | [Coprime.coprime_dvd_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-dvd-left.md) | 320 | `result-track:a7284e94387c1749a4a3e594f18784cc84f9603b04bc19d16c8ddc6bc49fe595` |
| 77 | `theorem` | [Coprime.coprime_dvd_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-dvd-right.md) | 326 | `result-track:ca7a507c73e1fa3f549a31ce10e76d239edfd231a76c225f840a9c2751a80dc5` |
| 78 | `theorem` | [Coprime.coprime_mul_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-mul-left.md) | 329 | `result-track:6101243c336f0cf97862842d9c3980528358b5a9b9b65ef353c75cc7314b43bf` |
| 79 | `theorem` | [Coprime.coprime_mul_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-mul-right.md) | 332 | `result-track:03c0e3f719ea87dd2631d6c77e50e3c3e7a4e19f3bc088fc9ac5b9533370690a` |
| 80 | `theorem` | [Coprime.coprime_mul_left_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-mul-left-right.md) | 335 | `result-track:cb5c95d41dcbca4ba3c2279f12b2dae0482c777cc0b5c35053ae3e27a1b47228` |
| 81 | `theorem` | [Coprime.coprime_mul_right_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-mul-right-right.md) | 338 | `result-track:948d46638addad83fa7ac0f1b8002c9ab33fdf32780466364747e7527ff569c3` |
| 82 | `theorem` | [Coprime.coprime_div_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-div-left.md) | 341 | `result-track:44b6f5b47af4828598a5e86175ab91656aac04ac1b303c3c5211c770e294fdbd` |
| 83 | `theorem` | [Coprime.coprime_div_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-coprime-div-right.md) | 353 | `result-track:87343dbf2f7b3386affafd48778854ee6a4135556647f50d70a5a07f01889c2a` |
| 84 | `theorem` | [coprime_mul_iff_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-mul-iff-left.md) | 356 | `result-track:0817b97da35312be159a18f00f99840108daca39697751287e3a83a4aa14bc86` |
| 85 | `theorem` | [coprime_mul_iff_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-mul-iff-right.md) | 360 | `result-track:55cc5745fa216e8020a5d253868507c9fc8c78e88ddc36a1cef8260bf7fb8c89` |
| 86 | `theorem` | [Coprime.gcd_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-left.md) | 363 | `result-track:d6656883d7c49f4a835957584e0457572b7192df37b5b7374f0b67f948fbdda9` |
| 87 | `theorem` | [Coprime.gcd_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-right.md) | 366 | `result-track:01ba16c799d3ac476225ddb26cf4c0bb8aa2835c22782eda012597a9403494dd` |
| 88 | `theorem` | [Coprime.gcd_both](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-both.md) | 369 | `result-track:ea25289f9ebef961af88ef5bff59834fb9c900504a0df4e14c00b45c5fb2a149` |
| 89 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-mul-dvd-of-dvd-of-dvd.md) | 372 | `result-track:010c6552b0de4967f47f24225fb9caf5a7dcde8d29be636619150bdad73939e6` |
| 90 | `theorem` | [coprime_zero_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-zero-left.md) | 376 | `result-track:a6aafd7f05b8ed20fde39e4b6c575e6668bab21fb58ee1135d88ced30f919a3a` |
| 91 | `theorem` | [coprime_zero_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-zero-right.md) | 378 | `result-track:6e2cdf4ab8f188af4b7ea399ed4701e860bae733674418e19619daed8a486ded` |
| 92 | `theorem` | [coprime_one_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-one-left.md) | 380 | `result-track:a086b83361bd08739ec0427ba3ab02d7354ebd57f43c027aaedb7833c32254dc` |
| 93 | `theorem` | [coprime_one_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-one-right.md) | 382 | `result-track:a992d9f4195e967566b689d1a24cd5ac16d842da869f4bd2ccdf9268beb59c48` |
| 94 | `theorem` | [coprime_one_left_eq_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-one-left-eq-true.md) | 384 | `result-track:6e919942164489d5f4cf472ebcfdace892990cdf080255ac2310e380889f0843` |
| 95 | `theorem` | [coprime_one_right_eq_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-one-right-eq-true.md) | 386 | `result-track:3fe48c6db8e77ac89c9940d320aa05a1f899759b73ba8c6d31d000e49067cb2a` |
| 96 | `theorem` | [coprime_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-self.md) | 388 | `result-track:346a34227dc9dde607a37ef3499cd91ab060667574a78673a4e0224b2a99950b` |
| 97 | `theorem` | [Coprime.pow_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-pow-left.md) | 390 | `result-track:27862b45fcf35cce6de9fb20e1b1cb1e879694fe05c6b1a43774d16692220a3b` |
| 98 | `theorem` | [Coprime.pow_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-pow-right.md) | 395 | `result-track:240166f581d33d2d4ad1bf2d7673bbb91a8a85c5dc5015eb7d94eaf7ec84b066` |
| 99 | `theorem` | [Coprime.pow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-pow.md) | 398 | `result-track:c26270571b2674da16c8498434862b6e373697c63ae7cc5661025e0b437d08a0` |
| 100 | `theorem` | [Coprime.eq_one_of_dvd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-eq-one-of-dvd.md) | 401 | `result-track:cc0a8d1085dd9ea5f96213106280a0859caf328e6a6aaabe1172c06df5755a48` |
| 101 | `def` | [prod_dvd_and_dvd_of_dvd_prod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/prod-dvd-and-dvd-of-dvd-prod.md) | 405 | `declaration-track:99172698b8619a528a7b83293fbfcb256377d38bc10bcc92b12ed62bbf1e22dc` |
| 102 | `theorem` | [gcd_mul_dvd_mul_gcd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-dvd-mul-gcd.md) | 418 | `result-track:77174c7d8c5cf664777206e4ff278bf660ea71f409635756d222b7bcc54ce998` |
| 103 | `theorem` | [Coprime.gcd_mul](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/coprime-gcd-mul.md) | 427 | `result-track:18a29bc3468d830f1fe1bd50cecb922d7b9ec4d2ce3c9ae378913458b134f2c7` |
| 104 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul.md) | 434 | `result-track:e4a9965b459b0b4e74fc7a23c65971c2680c2e6b88f29ef33acb1b2fccb26d4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15205265575aef3f76bfaae9f7fe0086f917d8294d7d04d437573dd497d8b11d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/GCD/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
