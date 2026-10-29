# Verification target: Lemmas Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa45781acb3514380b89cbe57f048e0403f59999",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa45781acb3514380b89cbe57f048e0403f59999`.

Source path: `GRWTSK/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfl_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/rfl-true.md) | 17 | `result-track:b64cab2f949410fdc87db93a2ad5f40920b0c15fa50ac3e34ed3e803405ffdc7` |
| 2 | `def` | [intro_with_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/intro-with-eq-source-edition-2.md) | 20 | `declaration-track:83a5c6285ac7c9c371633775d12dae28bd57c0f367ef277c985925840bafd477` |
| 3 | `def` | [intro_with_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/intro-with-eq.md) | 23 | `declaration-track:756406308b1241f27273b3b7ea159932b347e755ce65761e3c0296981618bb7b` |
| 4 | `theorem` | [and_eq_of_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/and-eq-of-eq-true-left.md) | 28 | `result-track:45f5bf7ef7fcbbd3c76d909b3fef65952d61e3812c949f1909fae9327857a32b` |
| 5 | `theorem` | [and_eq_of_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/and-eq-of-eq-true-right.md) | 29 | `result-track:5b42327fb1a5a4599c91f09d116bc62e5c39736d36d877269aeab8e859a78104` |
| 6 | `theorem` | [and_eq_of_eq_false_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/and-eq-of-eq-false-left.md) | 30 | `result-track:90e5eb65510dfd0b5c82082974d6983ded44fcb181a3275f40399681b6f33975` |
| 7 | `theorem` | [and_eq_of_eq_false_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/and-eq-of-eq-false-right.md) | 31 | `result-track:d26d8bf1bc7e38b4192a8039895f53038f2a9876334339e0f966c62cceeb25ec` |
| 8 | `theorem` | [eq_true_of_and_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-true-of-and-eq-true-left.md) | 33 | `result-track:7e9ca3c27924c4aaae2a77f9f4bfdbac7557d923ec27163cf635f51cc7de1450` |
| 9 | `theorem` | [eq_true_of_and_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-true-of-and-eq-true-right.md) | 34 | `result-track:272ca052e1c9af4cca076a8b3e3ebdc25f238410aad645eda3fd1e15fed0210c` |
| 10 | `theorem` | [or_of_and_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/or-of-and-eq-false.md) | 36 | `result-track:04b757d4d1145058c25b4a7dbc33d940ab725e1253ad24671e7e318277ecf175` |
| 11 | `theorem` | [or_eq_of_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/or-eq-of-eq-true-left.md) | 41 | `result-track:fd4e2d914106eaec0a5921de853ef5b7f0875325d026bad08d1442c17983362f` |
| 12 | `theorem` | [or_eq_of_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/or-eq-of-eq-true-right.md) | 42 | `result-track:84f4f53a9f4565794fdf3411695231e1e4bf6d6fc804e642c18337780d1d0599` |
| 13 | `theorem` | [or_eq_of_eq_false_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/or-eq-of-eq-false-left.md) | 43 | `result-track:99557e5ee938ee0b6679cbbe6fecc679e531a804a93f1e300670ca25a501205b` |
| 14 | `theorem` | [or_eq_of_eq_false_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/or-eq-of-eq-false-right.md) | 44 | `result-track:750c142742645266fc1a16ab5a07bef8e6851c5b28d1da159f99b5dffa910bd0` |
| 15 | `theorem` | [eq_false_of_or_eq_false_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-false-of-or-eq-false-left.md) | 46 | `result-track:ad7d05a706ba27e0aee75d0525b2e1d9ffcc105c39730aa43fe72dbb4e3e9210` |
| 16 | `theorem` | [eq_false_of_or_eq_false_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-false-of-or-eq-false-right.md) | 47 | `result-track:9e8967bbdbd9c5d4078b4fcc59c1e8e4c8fa6e53ed2c4bdc93b5c55ee3290fcf` |
| 17 | `theorem` | [imp_eq_of_eq_false_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/imp-eq-of-eq-false-left.md) | 51 | `result-track:fbf1ec988c7f97c674e30c083719b3bcc2526bf0eaf2476ea50407c70773c46b` |
| 18 | `theorem` | [imp_eq_of_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/imp-eq-of-eq-true-right.md) | 52 | `result-track:760424532ec9f7902910fb06f618264ca8f247eba14623291c0e02f5693c2e59` |
| 19 | `theorem` | [imp_eq_of_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/imp-eq-of-eq-true-left.md) | 53 | `result-track:bcc6f1540fbe7d7af00be0b3e15b863e43eb951c4cda24dcc9e3b1af4ecf5357` |
| 20 | `theorem` | [eq_false_of_imp_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-false-of-imp-eq-true.md) | 54 | `result-track:d73e8d4278d6d4774b0e861b9b2dffc035f01e17933b7c78fa79ecbb43138a10` |
| 21 | `theorem` | [eq_true_of_imp_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-true-of-imp-eq-false.md) | 57 | `result-track:d345782e1aa0537368697d1ec6e6463003ffecfcdfc003496b2262b782e56d3a` |
| 22 | `theorem` | [eq_false_of_imp_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-false-of-imp-eq-false.md) | 58 | `result-track:abdd53d469cd5763fc39d5d1b0ba81d945e3ce2c61fa7b0d99f6833a725cf5d4` |
| 23 | `theorem` | [not_eq_of_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/not-eq-of-eq-true.md) | 62 | `result-track:a009cdef250e4e3d7bb928a27d36a461441373751c366bbc0147fe961682c061` |
| 24 | `theorem` | [not_eq_of_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/not-eq-of-eq-false.md) | 63 | `result-track:09fcbc9098c26d6b91b4d6697494a15a15331ee1403f4f37c00fc510c43657a3` |
| 25 | `theorem` | [eq_false_of_not_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-false-of-not-eq-true.md) | 65 | `result-track:3767e6b4fee24f0dbf7829908bc5edc6ef0c82ba3763f9a0d702e7ea6de01c40` |
| 26 | `theorem` | [eq_true_of_not_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-true-of-not-eq-false.md) | 66 | `result-track:24194d37f1cb77b5915327f8b6654798b1a4e65bdf3e7cc9c72b5865a50a6496` |
| 27 | `theorem` | [false_of_not_eq_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/false-of-not-eq-self.md) | 68 | `result-track:a951db80176d692ed056cf81a9e90b5259f5a552bd5ea57fd5b63dd2f49bc1c3` |
| 28 | `theorem` | [eq_eq_of_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-eq-of-eq-true-left.md) | 73 | `result-track:7fd5ad2de4b2cdd96b18b6b02a97ea9b5af5c5659161a746c2b9bcb485f19346` |
| 29 | `theorem` | [eq_eq_of_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-eq-of-eq-true-right.md) | 74 | `result-track:b771964962ece983c4e4bd550186501026da3514e09790989cf854db54a2ee75` |
| 30 | `theorem` | [eq_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-congr.md) | 76 | `result-track:6d1ecfc71050d2d8f019d72237e5ea220ed7b2563f4908696de25a838bcb49a2` |
| 31 | `theorem` | [eq_congr'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-congr-source-edition-2.md) | 77 | `result-track:d49bab5403d758880bae56a05fafc394d85cf3240a3449910b6e4861fa22ed0f` |
| 32 | `theorem` | [heq_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/heq-congr.md) | 79 | `result-track:97ede0af4e9c2d1d5ede6dc14dddb5224ec6d48de9a05559285dbc2064b858a6` |
| 33 | `theorem` | [heq_congr'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/heq-congr-source-edition-2.md) | 80 | `result-track:ab837f77fbbdc30fa86edcf65c7ee46b980d9ac6026b7332758fcdd977c0d1ae` |
| 34 | `theorem` | [ne_of_ne_of_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/ne-of-ne-of-eq-left.md) | 84 | `result-track:79e058ea8b7be808aa7b5056e5c2fb3ad7c48a6065852dbb490fa55e981e8a43` |
| 35 | `theorem` | [ne_of_ne_of_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/ne-of-ne-of-eq-right.md) | 85 | `result-track:9332c7810c43f1d82eb40bbb7ebcab45c5fda2fb723f96b62df8ccce89ca31f1` |
| 36 | `theorem` | [beq_eq_true_of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/beq-eq-true-of-eq.md) | 89 | `result-track:de55ea54a9a26721318d5b855231854c11b0cdfa7107037074870c26146d7d39` |
| 37 | `theorem` | [beq_eq_false_of_diseq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/beq-eq-false-of-diseq.md) | 92 | `result-track:daaf616b9c9375f8774b8fc52c108a247b948ff00b3aa6d9eb848cf91cb0352b` |
| 38 | `theorem` | [eq_of_beq_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eq-of-beq-eq-true.md) | 95 | `result-track:84644709ea70eb96a80a33e7d7032c88236a3c6c8303acea95e2e51ec8172df9` |
| 39 | `theorem` | [ne_of_beq_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/ne-of-beq-eq-false.md) | 98 | `result-track:32723af8c2700b485548d4a6608ca3ec22f906707dad4cafc2953987024ea340` |
| 40 | `theorem` | [Bool.and_eq_of_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-and-eq-of-eq-true-left.md) | 103 | `result-track:234b2b7c18d7024728d525cea2ce82c85d604f3f499d53861ddd3367dead2e4e` |
| 41 | `theorem` | [Bool.and_eq_of_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-and-eq-of-eq-true-right.md) | 104 | `result-track:fd2d18edb51ab26cc2884ccfeb943be6d5170e47c57e3559e993feb4fa9e553d` |
| 42 | `theorem` | [Bool.and_eq_of_eq_false_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-and-eq-of-eq-false-left.md) | 105 | `result-track:f7098539cc936d7c74d2fb885623cab56c7f6763e1cd1abd640997d8938c11e1` |
| 43 | `theorem` | [Bool.and_eq_of_eq_false_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-and-eq-of-eq-false-right.md) | 106 | `result-track:9b776627c9241c47300827f54447b41ffa59aaa0fceef5019c2a77566da7b753` |
| 44 | `theorem` | [Bool.eq_true_of_and_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-true-of-and-eq-true-left.md) | 108 | `result-track:eb8d3e2274c3d18c1e14e0ab76270ec5e47fd90548039a943c2d411f89dcfc6e` |
| 45 | `theorem` | [Bool.eq_true_of_and_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-true-of-and-eq-true-right.md) | 109 | `result-track:565ea01dbf48756f9af35aafd83b53fa8c8db23b10e86f5dcadbd36a51734f6c` |
| 46 | `theorem` | [Bool.or_eq_of_eq_true_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-or-eq-of-eq-true-left.md) | 113 | `result-track:5ad362ea4cc583e73b1248d47cec010ac06fb9e9937913065f0d001f9f2c4bb8` |
| 47 | `theorem` | [Bool.or_eq_of_eq_true_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-or-eq-of-eq-true-right.md) | 114 | `result-track:86cd437c57724baaf963d79eec73d3abedbd3693725e51a2a08880c0d4b89886` |
| 48 | `theorem` | [Bool.or_eq_of_eq_false_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-or-eq-of-eq-false-left.md) | 115 | `result-track:7d9a84dc8d1ab59e8d3e9ff5c69c75db44650dd7f829c610f69bcf99d00f24c0` |
| 49 | `theorem` | [Bool.or_eq_of_eq_false_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-or-eq-of-eq-false-right.md) | 116 | `result-track:9bd8729fddd3eedc596ad078211b88c71c6764a7ada58fc2c03346cc36bf4031` |
| 50 | `theorem` | [Bool.eq_false_of_or_eq_false_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-false-of-or-eq-false-left.md) | 117 | `result-track:114fdb094a0370a19928059d2a97ea34f6b3c29dc8c476451e50b56047f64e00` |
| 51 | `theorem` | [Bool.eq_false_of_or_eq_false_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-false-of-or-eq-false-right.md) | 119 | `result-track:d7733e298187ceae9066c2e6b26229772901367b34a65f750ee1a2735b02b817` |
| 52 | `theorem` | [Bool.not_eq_of_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-not-eq-of-eq-true.md) | 124 | `result-track:c946f3aa60ea59c7e51bebd8b80cecb5a7a2a6d9b53ea7d775981a4a08a326d1` |
| 53 | `theorem` | [Bool.not_eq_of_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-not-eq-of-eq-false.md) | 125 | `result-track:7d10b169b8102b133a831c7780bcba829a1ea5325cc783d6f70836c0b1aa1a8a` |
| 54 | `theorem` | [Bool.eq_false_of_not_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-false-of-not-eq-true-source-edition-2.md) | 126 | `result-track:b8e411696f7f2d57d7df889b2e2e2e173cb02fbea2d426b9939f1993d4d01cca` |
| 55 | `theorem` | [Bool.eq_true_of_not_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-true-of-not-eq-false.md) | 127 | `result-track:72167758bc1ebc85781b3eff1a332396928b4815fac98fe8300574b241b71b6e` |
| 56 | `theorem` | [Bool.eq_false_of_not_eq_true'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-false-of-not-eq-true.md) | 129 | `result-track:19e50e2ddc0e205a4bb8a484df37a0a741e01a345a8a92da931e3ce4bcd55e0e` |
| 57 | `theorem` | [Bool.eq_true_of_not_eq_false'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-eq-true-of-not-eq-false-source-edition-2.md) | 130 | `result-track:ee0dffb3a0e05e3f2efb900a1afdaef62461de191ca9cd38f1736dcc4926485f` |
| 58 | `theorem` | [Bool.false_of_not_eq_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-false-of-not-eq-self.md) | 132 | `result-track:b6f211e879d0f1339ffb8508f100637bf8454e995205632d31022a94eb85214b` |
| 59 | `theorem` | [Bool.ne_of_eq_true_of_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-ne-of-eq-true-of-eq-false.md) | 135 | `result-track:c0e96597df13e795c226d2801283772c4f3f9c84317b85fe25bff7d7aab4b6cf` |
| 60 | `theorem` | [Bool.ne_of_eq_false_of_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/bool-ne-of-eq-false-of-eq-true.md) | 137 | `result-track:743ed637ef2880fa563715bd4db961177192b5864a249bb5be351131d7814326` |
| 61 | `theorem` | [of_eq_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/of-eq-eq-true.md) | 141 | `result-track:f5a8b7362fddf37c2fc1f6d02ccee2028fac0f0438bbdf99f4635ceee80f10eb` |
| 62 | `theorem` | [of_eq_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/of-eq-eq-false.md) | 143 | `result-track:2280cc010b6d2aa3c5886e896adbf0f0ee14a5a0cca175ca2c1c5c113978dd7e` |
| 63 | `theorem` | [forall_propagator](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/forall-propagator.md) | 148 | `result-track:07f0b4f997f320b112035f80d8e0b364f5c08aa69401462855f3dc87a28bcccd` |
| 64 | `theorem` | [of_forall_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/of-forall-eq-false.md) | 153 | `result-track:c6b6fb2f26372a1a75fa7a5b3603e66e6c80d75b596a2a301bf9c2244c8aa6b9` |
| 65 | `theorem` | [dite_cond_eq_true'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/dite-cond-eq-true.md) | 157 | `result-track:948c562f8301e8f6497f1abac1575f2a3544c8ebeddd11fe4cfb5d9770eda81c` |
| 66 | `theorem` | [dite_cond_eq_false'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/dite-cond-eq-false.md) | 158 | `result-track:bf730a12a8ff15e24852705b993b308ccca8ade00000e47b059b493dd4798205` |
| 67 | `theorem` | [eqRec_heq.](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eqrec-heq.md) | 162 | `result-track:d6d5beb5c8f1ecf39a3f972fa13dd50c88ed0fb4c6042252c8151284f1988686` |
| 68 | `theorem` | [eqRecOn_heq.](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eqrecon-heq.md) | 167 | `result-track:d81a74e963bc22f59910c6cc780eda9b79c428799c51fdb7993a959d20f5cc97` |
| 69 | `theorem` | [eqNDRec_heq.](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eqndrec-heq.md) | 172 | `result-track:bd805884e29d09d7b728d3d6b5c1b055b55f2260979bc5f7f3c380ea1fb64ee0` |
| 70 | `theorem` | [of_decide_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/of-decide-eq-true.md) | 179 | `result-track:842427aaf54189aa930f58d8a0777f84a7a45c38efd3fe0ad4400a58088e4531` |
| 71 | `theorem` | [of_decide_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/of-decide-eq-false.md) | 180 | `result-track:3a68d8d16f77f07d64c324640901f7c8d363466517d2fe8907ff9df5c8a85694` |
| 72 | `theorem` | [decide_eq_true](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/decide-eq-true.md) | 181 | `result-track:c866edf3c9029701218f51faf473031a29f18eb69a0a74a61ca047316ccc1328` |
| 73 | `theorem` | [decide_eq_false](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/decide-eq-false.md) | 182 | `result-track:0f30f69534c16a171f31b0a34f436e1ccbdad712d37937df7c1385640df30189` |
| 74 | `theorem` | [of_lookahead](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/of-lookahead.md) | 186 | `result-track:75fe40164a9c14856429c914a87a7ca310a0eda8f94c1a931745c891e69d9039` |
| 75 | `theorem` | [Nat.and_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/nat-and-congr.md) | 191 | `result-track:2a2042a4bae6bdbfbef820e0e15c79fb00329f3a9322ed720b1c3d2dc0a0cdae` |
| 76 | `theorem` | [Nat.xor_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/nat-xor-congr.md) | 192 | `result-track:f60072d7eee584d3dfae3c11ff9095ac773685e56383686f0b584f2a784510b9` |
| 77 | `theorem` | [Nat.or_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/nat-or-congr.md) | 193 | `result-track:7cd2a62ec0900c253ea438e746e4db60a05e1a8cd67131f23c679a7546e2bbd4` |
| 78 | `theorem` | [Nat.shiftLeft_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/nat-shiftleft-congr.md) | 194 | `result-track:d3f78db67ccf8efd37bb1a8b0069c892872485684c719eb31add0850ad625967` |
| 79 | `theorem` | [Nat.shiftRight_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/nat-shiftright-congr.md) | 195 | `result-track:8df047ccc81bc5e44c52554bf38d0be7ee0d34496131dd7cf47121afb70e7dd5` |
| 80 | `theorem` | [eval_congr₁](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eval-congr.md) | 199 | `result-track:7f0394c363dc0c420bcfea136ccd163342a7622108784f89d52b3a24c563e9d9` |
| 81 | `theorem` | [eval_congr₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/eval-congr-source-edition-2.md) | 203 | `result-track:d0b5161a66566bc374fc448c78e65f8ee5913ea9b363e19130261b31cc715d75` |
| 82 | `theorem` | [getElem_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/getelem-congr.md) | 212 | `result-track:cb9daedae42f08ee29a492824d1587016815e258b6efd6e40fadd446fc8575cd` |
| 83 | `theorem` | [Semiring.one_mul_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/semiring-one-mul-congr.md) | 219 | `result-track:a303879a8d876ca53656b541cf9d8d3b306f10133c0fd5d36110e3f6ce1be13b` |
| 84 | `theorem` | [Semiring.zero_mul_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/semiring-zero-mul-congr.md) | 221 | `result-track:5b9db8aaf1308550dabda02ecb5cee95ec0bc30a02351e4ec5a550acfa6fac79` |
| 85 | `theorem` | [Semiring.mul_one_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/semiring-mul-one-congr.md) | 223 | `result-track:671e0d49f962ae8494fc686fc4ef17c130f01650d18b1d6d5580d6b8743aee63` |
| 86 | `theorem` | [Semiring.mul_zero_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LemmasLemmasPublic.lean/declarations/semiring-mul-zero-congr.md) | 225 | `result-track:49c130822f8479429020b23220ca592d7c930ec4254a9d169d031a0594646c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6b05b5ea883513a4bef9a529754722448a2e594a047942b13d772bc7c579b4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean","GRWTSK/_verification/specifications/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
