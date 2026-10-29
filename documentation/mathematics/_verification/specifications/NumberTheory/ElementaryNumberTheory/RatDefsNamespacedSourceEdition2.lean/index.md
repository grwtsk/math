# Verification target: Rat Defs Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8a500f3fec0f3893296a0b4bfdb4fb89802ba5a",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8a500f3fec0f3893296a0b4bfdb4fb89802ba5a`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Rat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/pos.md) | 49 | `result-track:05049f8e44dc31d6c34b08e103f1a9854c66e3d98399119a67cce92675f88561` |
| 2 | `lemma` | [mk'_num_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mk-num-den.md) | 51 | `result-track:9c21d4674cea3de221da3e5595dc5e3905d465f54762652f3990b29b02579f14` |
| 3 | `theorem` | [ofInt_eq_cast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/ofint-eq-cast.md) | 54 | `result-track:2a6a6a4410846b0555163a8508f2d637fc48b510365f8b481257f3b6ca9c89fb` |
| 4 | `lemma` | [num_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-ofnat.md) | 58 | `result-track:dd65268e497dcbb86f5dfa3c3c2cc0cbe400b8f5eb7613b59186fa4cd5082c19` |
| 5 | `lemma` | [den_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-ofnat.md) | 59 | `result-track:5e5098b95fcd401da62bbd996b905f0fa92522d5d82080621de23d765071ec60` |
| 6 | `lemma` | [num_natCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-natcast.md) | 61 | `result-track:aac9e261a5840abe8895c910741b31ed23711be86ec9193e86f4f52e178e6498` |
| 7 | `lemma` | [den_natCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-natcast.md) | 63 | `result-track:42772a6d8ba6435facc799effa6ac3d53c0065ae668c05f5d770df7f17ac0ac7` |
| 8 | `lemma` | [num_intCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-intcast.md) | 66 | `result-track:fd6e35d07be1d783869c2cb439790642ccd3de1b65351395a01f2478cdbfed24` |
| 9 | `lemma` | [den_intCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-intcast.md) | 68 | `result-track:3e4ae3c2bca7f8d625914b026e70b28aec2d505b5aeaf83df79fb57199ba0884` |
| 10 | `lemma` | [intCast_injective](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/intcast-injective.md) | 70 | `result-track:b38dd278dcc39da0fdb5cf7114dd02191a7bd8e0c7507f4f7af7e8beaa2231d6` |
| 11 | `lemma` | [natCast_injective](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/natcast-injective.md) | 71 | `result-track:0b171e408146e42bb5ec9f7937cd570b0b124c913122e072124233e1ca6eb19c` |
| 12 | `lemma` | [natCast_inj](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/natcast-inj.md) | 74 | `result-track:a2484ead2bd7f8d948fd42df816fd83c6c10c829581888fff959dce7f433e974` |
| 13 | `lemma` | [intCast_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/intcast-eq-zero.md) | 76 | `result-track:c7e9fe0f04e9939e2270b9db5585793854e521757dbcdf08676cb0929724cc96` |
| 14 | `lemma` | [natCast_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/natcast-eq-zero.md) | 77 | `result-track:010f62a2b34cb19b1ad2ba179cd56bc3d52b24ae90c5fa528e8bdcd33a178f89` |
| 15 | `lemma` | [intCast_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/intcast-eq-one.md) | 78 | `result-track:9f4b523286b6cd141fe9e057902ae75185b8e05970fff315b1c8d7a279d5da06` |
| 16 | `lemma` | [natCast_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/natcast-eq-one.md) | 79 | `result-track:cde9bbb7503783ccea113b7aeb8eaac4140a778be5efe9f7b7f64a812a6c4f19` |
| 17 | `lemma` | [mkRat_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mkrat-eq-divint.md) | 81 | `result-track:50d016302fc6bdf23056fe65a8c627a66e2ae85763f24c1d31bdc90427d07b21` |
| 18 | `lemma` | [mk'_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mk-zero.md) | 83 | `result-track:9bb6f7c8966a86f0b27bf519d7f242521aa8a0028f520765591ad4d7e149c578` |
| 19 | `lemma` | [num_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-eq-zero.md) | 86 | `result-track:ede81169965badeb51ea42b9fb2575f19c0a128b8226678c3aa9b4924b8b116c` |
| 20 | `lemma` | [num_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-ne-zero.md) | 93 | `result-track:237c153ee25e3ffbc037b581ff48d0fa824e4842fa24de6b84d5e4c487fdceb2` |
| 21 | `lemma` | [den_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-ne-zero.md) | 95 | `result-track:d5f4f221f86a393a9b4b228bef5a23d10b1ec7c8ccc38e131f95ca5e4779fb33` |
| 22 | `lemma` | [num_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-nonneg.md) | 97 | `result-track:44c929509d79d8fa24a8d2d62ce7035aed3be9e7ec8b930b663fb7862f001d7f` |
| 23 | `theorem` | [divInt_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-eq-zero.md) | 101 | `result-track:ced7b998ecde5346c086bd85ebbf7048a465d55b26e42352d671de07715cda34` |
| 24 | `theorem` | [divInt_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-ne-zero.md) | 104 | `result-track:2cc2cc37a353f2a57bb5352a2ebba94f121c55cdefe6b991dd1358c777382830` |
| 25 | `theorem` | [normalize_eq_mk'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/normalize-eq-mk.md) | 108 | `result-track:cf78b9fc0b1e6b689298d2a33755b5743321a17f0e6849ea7b57e36b4a7ae92b` |
| 26 | `lemma` | [num_divInt_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-divint-den.md) | 115 | `result-track:971953ed75c10856b383484de81e92b861d8fa2d9df159853dbfb4bfac9345a7` |
| 27 | `lemma` | [mk'_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mk-eq-divint.md) | 117 | `result-track:fa134a742379198155bb15385debb4f8acdc2c42afcfbdd82d01d1e6fb2418d5` |
| 28 | `theorem` | [intCast_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/intcast-eq-divint.md) | 119 | `result-track:3a54ae515a75d46efae2ca06a2fd53fed8f335006a398de33ca891d887023eff` |
| 29 | `lemma` | [divInt_self'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-self.md) | 122 | `result-track:5bababfeadbbe96b1ce437c8319aba273f8799c731cfc7cd7b15b41fa06d4f46` |
| 30 | `def` | [numDenCasesOn.](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/numdencaseson.md) | 128 | `declaration-track:20212da44f0412e2759f41c1dc313edacc99266cf8ac9faa9aba30e84d6e8c35` |
| 31 | `def` | [numDenCasesOn'.](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/numdencaseson-source-edition-3.md) | 135 | `declaration-track:7364f1910ce9413543887b18b9ae483434ac9c0f7a2b99fde7f3eb7f94b291f5` |
| 32 | `def` | [numDenCasesOn''.](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/numdencaseson-source-edition-2.md) | 142 | `declaration-track:403e686a134d8aa87f60a85290d4a3c2c42b7af69aadac35c91c79427aa27da3` |
| 33 | `theorem` | [lift_binop_eq](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/lift-binop-eq.md) | 146 | `result-track:be9034df594c7b5c98212246e0d4fb24c2cb18d03d72ab6b48f35ffab44d3038` |
| 34 | `lemma` | [neg_def](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/neg-def.md) | 168 | `result-track:69dbe854c2c23c4792781ef663add4d5da01cb9fd3e4f1e86907ac263f2de45e` |
| 35 | `lemma` | [divInt_neg](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-neg.md) | 170 | `result-track:fbd7f0afd577a3587a6fd752d44845331329d7d27f64e81603a78d64b7cf354f` |
| 36 | `lemma` | [divInt_mul_divInt'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-mul-divint.md) | 175 | `result-track:f3bf7b35f571117a582ad4564ece83ba3d3cc42ff08d63880cefb6fead2c2676` |
| 37 | `lemma` | [mk'_mul_mk'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mk-mul-mk.md) | 184 | `result-track:384b82ed0bf766121e66cd370a5948d8af946a9a7bf92d19174d865dd357763c` |
| 38 | `lemma` | [mul_eq_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mul-eq-mkrat.md) | 190 | `result-track:d81accb6899a5a86b80dbd9fe819f939be1671885723ff4da6425c0514de83df` |
| 39 | `instance` | [instPowNat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/instpownat.md) | 196 | `declaration-track:05d3c88855ba085b82354e2dec297412bb6217052f6016becea5aef9e215a3e9` |
| 40 | `lemma` | [pow_def](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/pow-def.md) | 200 | `result-track:fca4203dcbe0ddd57d870f58b4750a56fbc558cd113512f7fbe787d1b14d8b5b` |
| 41 | `lemma` | [pow_eq_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/pow-eq-mkrat.md) | 205 | `result-track:429884067c6e538b31b1afa1b7bd1e52806d235db44a10fead7ffc14423b1872` |
| 42 | `lemma` | [pow_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/pow-eq-divint.md) | 208 | `result-track:03c035d496fea20bdf382be234aa483671bbaaf0be01705bf1918896e834d821` |
| 43 | `lemma` | [num_pow](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-pow.md) | 211 | `result-track:a15213f7e1d2f1b38a67ffae7dc1fdf6cbaa55eee0acef6cdac575bb3322f534` |
| 44 | `lemma` | [den_pow](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-pow.md) | 212 | `result-track:03ef97fdbd81d777171bac67147d05a1abdc7ce85e6c4a1ccd32743b6d933764` |
| 45 | `lemma` | [mk'_pow](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mk-pow.md) | 214 | `result-track:fba7a20ce2640f15fc2907e0b210837937d068c83c24d32339b7e37c24de4638` |
| 46 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/instance.md) | 218 | `declaration-track:e1e2c7f572f7f59e39424571d0c3968cc253362e73329ec1cad0ed67eece2797` |
| 47 | `lemma` | [inv_divInt'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/inv-divint.md) | 221 | `result-track:37510f4b84a677561b9cdf87e0a993577e2808b1a80f4068d31c7ed139656386` |
| 48 | `lemma` | [inv_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/inv-mkrat.md) | 223 | `result-track:2b299468e2fe2b2e4dd93cd17e2177edb028e4cd0bccd35c1b856be8783993b7` |
| 49 | `lemma` | [inv_def'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/inv-def.md) | 226 | `result-track:2f8560b198937e17a448e43f1de1651e10dad9d9fa7c6c59153dfcb6373d3a1d` |
| 50 | `lemma` | [divInt_div_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-div-divint.md) | 228 | `result-track:8834300fefcc6688af25fcdd3d314d35460fc3843132e37e7e39ac4cf896db81` |
| 51 | `lemma` | [div_def'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/div-def.md) | 232 | `result-track:b68afbbf01f1e8771ee0596a3fbab226e10a0bf1597f2a75d1da77a9b4284fdb` |
| 52 | `lemma` | [add_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/add-zero.md) | 237 | `result-track:04de1065203422082365bed6bcbbb15a3858f1b474ad9323b7d232b18502e660` |
| 53 | `lemma` | [zero_add](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/zero-add.md) | 239 | `result-track:1aae285561e094e86c2bdc5809b1ea49cb6983beb37873455bad051f25c532b4` |
| 54 | `lemma` | [add_comm](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/add-comm.md) | 241 | `result-track:2853c85edee9e8e5739e577b58c950c0fa22af8ba2e07318a4fbfce6a590a45b` |
| 55 | `theorem` | [add_assoc](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/add-assoc.md) | 244 | `result-track:1e19980ed93a0431eab261709359029d17165c248e3cd8a9b68902af7b8297d0` |
| 56 | `lemma` | [neg_add_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/neg-add-cancel.md) | 252 | `result-track:9b963b2ffd83aa6d46dd57044b39e2aa336877d7210bf652702e88e26a0670c4` |
| 57 | `lemma` | [divInt_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-one.md) | 255 | `result-track:a8d96e230d66ed4eece64f8692d16e2f9d017db6a06d6e0412a47bab88d1084e` |
| 58 | `lemma` | [mkRat_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mkrat-one.md) | 256 | `result-track:0f2d28581785c65bb5f06e002f583495002923d29dae43e19f751182178c0487` |
| 59 | `lemma` | [divInt_one_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-one-one.md) | 258 | `result-track:8aa5b31b31d6343e12a1a23b1eb41738dccbd34907900ca11feb6de1ffc69f8a` |
| 60 | `theorem` | [mul_assoc](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mul-assoc.md) | 260 | `result-track:97bc89b2fb85e40c53a19c6baefd1baecbe946bbc1db74e00a7bcd239f06381a` |
| 61 | `theorem` | [add_mul](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/add-mul.md) | 266 | `result-track:746bc7e0c5d5de1e20fe65b4c05d595eddbefc76558bc9ee2ec1ff4ae87966ad` |
| 62 | `theorem` | [mul_add](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mul-add.md) | 273 | `result-track:2d5b324ae7326af62edce664a618a70ff4e8c870ac0e1d1d340501b93b79d794` |
| 63 | `theorem` | [zero_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/zero-ne-one.md) | 276 | `result-track:4472ebec1d64df1e0fcc9e9c121c5734e7bbc07fc8544aef645d6058b7b7c3a7` |
| 64 | `theorem` | [mul_inv_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mul-inv-cancel.md) | 281 | `result-track:8d63a0f4edc21fd606bc6ba7cee2a15e2f3319932b0537bb8028076e197df536` |
| 65 | `theorem` | [inv_mul_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/inv-mul-cancel.md) | 286 | `result-track:516c2eae4f797ffc6663e7055c7aa74b5d2c969fc8abae2edcdb2b9fa80bbd6a` |
| 66 | `instance` | [nontrivial](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/nontrivial.md) | 291 | `declaration-track:38c2d5f593a3aebe65415fd11c6ff6ab5ccb137d41504d1ed7c79f48bb5fd0a5` |
| 67 | `instance` | [addCommGroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addcommgroup.md) | 295 | `declaration-track:7315ace61708807a54ae450b968fc345c9d7b838f13404a0af6423fcfaeac850` |
| 68 | `instance` | [addGroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addgroup.md) | 308 | `declaration-track:cb56315ab803d3b96cd4e02c4c743d20abed0cd774cf9f5d7db3fcfa94033273` |
| 69 | `instance` | [addCommMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addcommmonoid.md) | 310 | `declaration-track:a2c56e2b074fd46a13bfc31ab664792d4054afac9e1833409b1499bf90b126a1` |
| 70 | `instance` | [addMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addmonoid.md) | 312 | `declaration-track:b52cd7f63f2740098ea2e64d834e560233952c4bb9828078d5faf89f3ef05b78` |
| 71 | `instance` | [addLeftCancelSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addleftcancelsemigroup.md) | 314 | `declaration-track:b343dbb61bf0f8384314ef772f28c1e6acf269291cf6293b5d452c687db3ba1d` |
| 72 | `instance` | [addRightCancelSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addrightcancelsemigroup.md) | 316 | `declaration-track:bd410e96590c968d8cad380509fa84ea4e22035cd446cd35cb2e33f8e86bcd32` |
| 73 | `instance` | [addCommSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addcommsemigroup.md) | 318 | `declaration-track:ff751874e35c5cb0199e64a92a0693689f1c80726887f41dcff1bc7e9a73ae45` |
| 74 | `instance` | [addSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/addsemigroup.md) | 320 | `declaration-track:bc8b44156f4b068b61f5bfcf0782fc687e5cf75a3c9b00b5cfcab6b7c083d52c` |
| 75 | `instance` | [commMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/commmonoid.md) | 322 | `declaration-track:2519898a61c6959f5e5968b377bb14a4cef91eb7e6f39d18d7aa50b9f77e200a` |
| 76 | `instance` | [monoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/monoid.md) | 339 | `declaration-track:e8f6a274c48f7d5335adda2e3e4410c28730be2a817c789c3944bcb147bef576` |
| 77 | `instance` | [commSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/commsemigroup.md) | 341 | `declaration-track:38b6fc354628c3e3aa3a3f7f175b55c45282ad214495d4c0d0e544bff4797400` |
| 78 | `instance` | [semigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/semigroup.md) | 343 | `declaration-track:5e6684662fb72fc9d21975dc4cc21d584438b0400bb67e13c45a3498dabbb8b9` |
| 79 | `theorem` | [eq_iff_mul_eq_mul](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/eq-iff-mul-eq-mul.md) | 345 | `result-track:7b3b334a65c5541da9c1c9f079ddb4eef10d4a9ccfda74190671bb40b8e00b34` |
| 80 | `theorem` | [den_neg_eq_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-neg-eq-den.md) | 354 | `result-track:62989137b8c00635795006781339d1bf217908fd5607fb9990ef32be1c5371a9` |
| 81 | `theorem` | [num_neg_eq_neg_num](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-neg-eq-neg-num.md) | 358 | `result-track:fbdc607823ddbe6ffe8a7d4963e6f3f45fe34b6711d747fd61eb7afb9209be75` |
| 82 | `theorem` | [num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-zero.md) | 362 | `result-track:76617b2522a91b4b9018dd11aafe9d847a0616fa5248d0276649de3db54da14e` |
| 83 | `theorem` | [den_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-zero.md) | 366 | `result-track:1feb8ee7b53734d79b6b07597fff279afec2ad14c686bdc29aaf938b44398d4d` |
| 84 | `lemma` | [zero_of_num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/zero-of-num-zero.md) | 369 | `result-track:64f4ead165788100f03d4315f57eb0fde465394ebef337f4df0f243c956405c5` |
| 85 | `theorem` | [zero_iff_num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/zero-iff-num-zero.md) | 371 | `result-track:1ae006e23a2580bffe78d01449afb5df1aa5b3e68c6feb8f7589ff07f6f57dc4` |
| 86 | `theorem` | [num_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/num-one.md) | 375 | `result-track:f859c33dabd72a9d21ed0748a91ff79b0bbef612480bd201a117c9efd73faff0` |
| 87 | `theorem` | [den_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-one.md) | 379 | `result-track:ccc9f930e4ce10ae0472c1704463c62321bec026866e7014b7e2ce0592ec0f9e` |
| 88 | `theorem` | [mk_num_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mk-num-ne-zero-of-ne-zero.md) | 382 | `result-track:605482d2f7178d4cfd2dac282a6707a21bf89b3a27f3139fed99f17e8a7cc64a` |
| 89 | `theorem` | [mk_denom_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/mk-denom-ne-zero-of-ne-zero.md) | 385 | `result-track:32d228ad4f431fcd784019c5e777e730f18858f4d87657af902b228a83ca62e4` |
| 90 | `theorem` | [divInt_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-ne-zero-of-ne-zero.md) | 388 | `result-track:7c45d12c861a272eb1561bb732302ce8065a59792d638c9c1f0f15c6d9d5dd0f` |
| 91 | `lemma` | [nonneg_antisymm](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/nonneg-antisymm.md) | 391 | `result-track:89e75c7ecc8e82efd5f2f351d421aaea74c4e9b8aa170b3a4b5f3a6064f937ec` |
| 92 | `lemma` | [nonneg_total](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/nonneg-total.md) | 395 | `result-track:6be220db06bdaaf1b8903e29485d52df74a603ff138ba12121977f79da1092ca` |
| 93 | `theorem` | [add_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/add-divint.md) | 400 | `result-track:5add6724653af73c6b657924430d4eab0177e10f558886c47c3446d852854e3c` |
| 94 | `theorem` | [divInt_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-eq-div.md) | 406 | `result-track:ee400aebb5789363977a01464741bb710774c1e0de9d0bf3f3ad4cff38fdc519` |
| 95 | `lemma` | [intCast_div_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/intcast-div-eq-divint.md) | 408 | `result-track:5403c83069e8fd1efb87079e35e8f22471f70cce3edc08d7ec162c5e6632c2e1` |
| 96 | `theorem` | [natCast_div_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/natcast-div-eq-divint.md) | 410 | `result-track:a1e36f9289dcc7b70082f799a496d4d3468e11d3757742ef5460fa95809ac325` |
| 97 | `theorem` | [divInt_mul_divInt_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divint-mul-divint-cancel.md) | 412 | `result-track:a85fc6b7033e4986dde32d3c30bc4a9d82aa3c64a61011644a38e528dd4b95bf` |
| 98 | `theorem` | [coe_int_num_of_den_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/coe-int-num-of-den-eq-one.md) | 418 | `result-track:8c951896dcd5ec2bd7b5ad9f65ba07e272cea96a1746a334cef34e4331965359` |
| 99 | `lemma` | [eq_num_of_isInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/eq-num-of-isint.md) | 423 | `result-track:152a85b5d4c69665a845efba95229fdff10aefe3196aa49c0ff782e492da85c5` |
| 100 | `theorem` | [den_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/den-eq-one-iff.md) | 427 | `result-track:7e46c7d0183c7657279c3572a99a3b79faf20a9910259c47c09442822af13bf3` |
| 101 | `instance` | [canLift](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/canlift.md) | 430 | `declaration-track:eb731b502a6c3f8f4f41ffe20a2e9f28e94f355586983e3d7bfad1df5d1533d6` |
| 102 | `theorem` | [coe_int_inj](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/coe-int-inj.md) | 435 | `result-track:721421fdfaaa4eb0ce5f21a0f1e36718a2983918ad891f305e9aaed0b553744d` |
| 103 | `def` | [divCasesOn](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsNamespacedSourceEdition2.lean/declarations/divcaseson.md) | 448 | `declaration-track:987bf1f7bbf24504a58cc7266ed9fcd23dff52a722c9d6f24df7a5498ba359ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f54cbe74212154f53f7f3a76abcce6c14a6c1db48bf2c5216038e3da144d1f1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
