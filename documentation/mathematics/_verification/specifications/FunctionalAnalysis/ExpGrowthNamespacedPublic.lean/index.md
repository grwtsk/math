# Verification target: Exp Growth Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4efe499dd5e3357dbf32ce3cfc17f2b211e8e027",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant3a1b75994e6bdaacf089e45b084c8715a9427ce6645a2ba680205fdd30a83128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4efe499dd5e3357dbf32ce3cfc17f2b211e8e027`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant3a1b75994e6bdaacf089e45b084c8715a9427ce6645a2ba680205fdd30a83128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant3a1b75994e6bdaacf089e45b084c8715a9427ce6645a2ba680205fdd30a83128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expGrowthInf](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf.md) | 46 | `declaration-track:0f473635995494f6b95acdf9f191304eadef9cc031919ad86b87e6a2593e36dc` |
| 2 | `def` | [expGrowthSup](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup.md) | 49 | `declaration-track:9eaa8397a53364830331203ede63cd3572042833d88579bfb34cdacdeead1c74` |
| 3 | `lemma` | [expGrowthInf_def](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-def.md) | 51 | `result-track:5bce1f780eb7a6fe7a80efdb9674c2fd3d28244f5d4e4606e8bad516adfab9b9` |
| 4 | `lemma` | [expGrowthSup_def](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-def.md) | 55 | `result-track:19ffa9e0bd62a07c9ad7d5bd63fe02bc551a093fa66857b5a548dde0aef546ab` |
| 5 | `lemma` | [expGrowthInf_congr](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-congr.md) | 65 | `result-track:160b68ce929387fefbe9028bc4698c4d429cb465fe46164c36ad7960f2f43256` |
| 6 | `lemma` | [expGrowthSup_congr](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-congr.md) | 69 | `result-track:4380378353dac636d168d008b950b264d48b654b0d6d05d87af2874f3f1f5a18` |
| 7 | `lemma` | [expGrowthInf_eventually_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-eventually-monotone.md) | 73 | `result-track:9053ecd8d445d76f074ff43393e643930a0daba2795614278180dc70a823f8f8` |
| 8 | `lemma` | [expGrowthInf_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-monotone.md) | 77 | `result-track:a2b34ddef0d04cb3c7bceded7364f3ede55dbe581a5c175b32725a4ca224f3f6` |
| 9 | `lemma` | [expGrowthSup_eventually_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-eventually-monotone.md) | 80 | `result-track:8566ce14f4406447a43e8f652ca94911885d34d25686989c4bc36d10a1d0b8f9` |
| 10 | `lemma` | [expGrowthSup_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-monotone.md) | 84 | `result-track:84cb252805dbd1e4d46b864d4d796ad44f48c8e9a925e378af2b654808f2ead7` |
| 11 | `lemma` | [expGrowthInf_le_expGrowthSup](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-le-expgrowthsup.md) | 87 | `result-track:9025ed00e8f739b553275610827443a6a22f72e6d90c574b6f5c91742afa62a9` |
| 12 | `lemma` | [expGrowthInf_le_expGrowthSup_of_frequently_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-le-expgrowthsup-of-frequently-le.md) | 89 | `result-track:8df157d17ef8c562ba92c954522fdbb3e8d759f0c73418055c1c1968a2d79700` |
| 13 | `lemma` | [expGrowthInf_le_iff](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-le-iff.md) | 93 | `result-track:6819578ac0a5516425416c9cebd687ccfb23567d60e382ac92994eae793de898` |
| 14 | `lemma` | [le_expGrowthInf_iff](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthinf-iff.md) | 100 | `result-track:38c3938a2ba892d078be29247d3e85c943678743a48038d7f416f01b9863130e` |
| 15 | `lemma` | [expGrowthSup_le_iff](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-le-iff.md) | 107 | `result-track:c9e3eef3017c24809ecd8e04fff1c4cefdf0f3d724372f8e65ba5c7ffdb66f1b` |
| 16 | `lemma` | [le_expGrowthSup_iff](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthsup-iff.md) | 114 | `result-track:7f69039541ed96c790f8857898f88dff440df893e467669da725f15a615632cd` |
| 17 | `lemma` | [frequently_le_exp](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/frequently-le-exp.md) | 122 | `result-track:9d918b0b0484317a4fcdabf045c2973491a93907497dbfaf918db30e9e409335` |
| 18 | `lemma` | [eventually_exp_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/eventually-exp-le.md) | 127 | `result-track:152c1ca7a14f23391e60823828fb3302f5a9142c5cbe051df545a0dc4cb1b389` |
| 19 | `lemma` | [eventually_le_exp](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/eventually-le-exp.md) | 132 | `result-track:b41d8da2b2e6737d829103876ca775a269176753041daa1660ea5fa32802f927` |
| 20 | `lemma` | [frequently_exp_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/frequently-exp-le.md) | 137 | `result-track:2cabc500460cea92906a839816c66a8a3d09819d6a39c86d4a7d314f4b40d790` |
| 21 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-le.md) | 141 | `result-track:7dfe026c8b62800f0e223fab10920face0b8ed36ecdb41e4d72ebe248bb41c45` |
| 22 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthinf.md) | 146 | `result-track:e388f7e19b04fb08841d6b0e7f8b9708a1df44a9cd90cff221bb5191979b93a4` |
| 23 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-le.md) | 150 | `result-track:c2552c57ec3fafcd9d0ec38715c553ac9b198677b120e258c272a0097d44f1db` |
| 24 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthsup.md) | 154 | `result-track:0181af8c3bab6332d1fc9b028480d1bded30e8040d77ea5424d0cebd53660aa6` |
| 25 | `lemma` | [expGrowthSup_zero](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-zero.md) | 160 | `result-track:3b0ec23837995c6cb45679dec69b12d410fb6102cb7ac8be8e52c28820e027e0` |
| 26 | `lemma` | [expGrowthInf_zero](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-zero.md) | 166 | `result-track:2e0c73234e874aee27e19e1557a4909df19f62f7429d33b2399b222beea7b32f` |
| 27 | `lemma` | [expGrowthInf_top](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-top.md) | 171 | `result-track:7c9b69564a064fe46715d253366928af3defc94184989b662f3359ce8e4bb914` |
| 28 | `lemma` | [expGrowthSup_top](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-top.md) | 175 | `result-track:556f12899e2d763a98d860837aa88cb21fc21db48d422ab234d82213c1abfd7a` |
| 29 | `lemma` | [expGrowthInf_const](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-const.md) | 180 | `result-track:7d1eb23787de0525a27b0752131891b0f5df62d72c137457b286bed67b0e2cd1` |
| 30 | `lemma` | [expGrowthSup_const](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-const.md) | 184 | `result-track:cd373763a52b54ad395467d12a2a203cfdbb3d2af4ff7633a48e611a9b923662` |
| 31 | `lemma` | [expGrowthInf_pow](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-pow.md) | 188 | `result-track:971277422c16b49d03ce08e5a9f22770002087fee23fe71f4426ac44f2e74b1d` |
| 32 | `lemma` | [expGrowthSup_pow](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-pow.md) | 194 | `result-track:d0da6c672f4ce59898dedda060cee2d3ba00392f09d8340574e8035a6127d6d4` |
| 33 | `lemma` | [expGrowthInf_exp](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-exp.md) | 200 | `result-track:7e8f1215fce5e74131a94cacf339d66e0f05f475dc5894afd3199161c19090f6` |
| 34 | `lemma` | [expGrowthSup_exp](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-exp.md) | 204 | `result-track:48d63d4e553c796f46f873bfc3b94d2bd5155d87e5b4c8ea497266ed3b794521` |
| 35 | `lemma` | [le_expGrowthInf_mul](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthinf-mul.md) | 210 | `result-track:39df0e39b4a11f74a1de8f94770f836eded7ee7291b62a94177ab0e3e7795213` |
| 36 | `lemma` | [expGrowthInf_mul_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-mul-le-source-edition-2.md) | 216 | `result-track:4d8fb6bbe50649dbfc738eaed6d8247e648907c85db616fa18b6c1b686f54a4d` |
| 37 | `lemma` | [expGrowthInf_mul_le'](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-mul-le.md) | 223 | `result-track:428c3d3e229d9eca109eafaaf8f4fd681f6215d1563037c254b7ee9b76f8467f` |
| 38 | `lemma` | [le_expGrowthSup_mul](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthsup-mul-source-edition-2.md) | 230 | `result-track:fe93bfde694586b751b1b2f42f7bae5c0517904ae097992f5df3515e646135ba` |
| 39 | `lemma` | [le_expGrowthSup_mul'](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthsup-mul.md) | 235 | `result-track:dfa33bb17dc18bfd49ec8fbd6849940122f2a8e384a761e87090dc563bbcdccd` |
| 40 | `lemma` | [expGrowthSup_mul_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-mul-le.md) | 239 | `result-track:be59ffe1283fcd140099d665612b4635a2d5ce959e953106c5d9019f6f012c58` |
| 41 | `lemma` | [expGrowthInf_inv](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-inv.md) | 245 | `result-track:44ce5b68b4223e8dadb59ccafde1337cc055e3bd0c11619d53699cad4bd7a4df` |
| 42 | `lemma` | [expGrowthSup_inv](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-inv.md) | 250 | `result-track:e5230cb916268beca3e1d283766162395f4c982d23f73e061ab1d850c4a2a528` |
| 43 | `lemma` | [expGrowthInf_le_of_eventually_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-le-of-eventually-le.md) | 259 | `result-track:a4f15b5b0307096af9f6e9e170cc6b9cbd4f932fb514dac1624164b34f8ad8e6` |
| 44 | `lemma` | [expGrowthSup_le_of_eventually_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-le-of-eventually-le.md) | 271 | `result-track:62b1c33c4cf0bf5359406a65717dbf970610767b29b68bf5e15d805ef74f552e` |
| 45 | `lemma` | [expGrowthInf_of_eventually_ge](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-of-eventually-ge.md) | 281 | `result-track:32479306a77eb8f0010b3ac1243650257dbf8ce8a03566588b475403e6eb8200` |
| 46 | `lemma` | [expGrowthSup_of_eventually_ge](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-of-eventually-ge.md) | 289 | `result-track:5c6a222dbc236b4fb61aec9fcc4e846486b940b0fd91d7af0bbda5813e61681c` |
| 47 | `lemma` | [expGrowthInf_inf](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-inf.md) | 298 | `result-track:c2fcc39749b4721415877d0bdcc60f79ce5ad5708202136e889fbf9747fd42f9` |
| 48 | `def` | [expGrowthInfTopHom](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinftophom.md) | 305 | `declaration-track:49b212ee1c635533ba9eccfb85322732c3cda93d8bfd1b928914aefeb77c5783` |
| 49 | `lemma` | [expGrowthInf_biInf](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-biinf.md) | 310 | `result-track:23b3ef0a48f9957c3b4150562e099427502c450925239a6dace10f263d37b8d0` |
| 50 | `lemma` | [expGrowthInf_iInf](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-iinf.md) | 316 | `result-track:ad4b22471dc2510406bb08ebd0ed403eeb3468d880345b94c37f204b8f418c4f` |
| 51 | `lemma` | [expGrowthSup_sup](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-sup.md) | 320 | `result-track:8ec66d70b5af14df36e4eaba830d2087e554b9b1bdcdca154c1dcc4eb0863a14` |
| 52 | `def` | [expGrowthSupBotHom](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsupbothom.md) | 327 | `declaration-track:773851957935364efd49440af3ecd5d340d710d360969d9114e5bd4b9ac77d0a` |
| 53 | `lemma` | [expGrowthSup_biSup](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-bisup.md) | 332 | `result-track:a61eec64274bb6bfa670c9addb80919d8a54bae6c073e817f1326c259ff9ebc3` |
| 54 | `lemma` | [expGrowthSup_iSup](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-isup.md) | 338 | `result-track:c2fe34a6ac739dc7e2ffe00f312512086497d4e0c3b48375ca053f4ec919b877` |
| 55 | `lemma` | [le_expGrowthInf_add](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthinf-add.md) | 344 | `result-track:030f8d1a93482b0e64c7901f54ad2e5874c5ecbfe420afa6c79daa90962157a7` |
| 56 | `lemma` | [expGrowthSup_add](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-add.md) | 347 | `result-track:2d7bfb479613495d96830bf5b152fbb5ad00c2fee61186eb7afddc7b16b182cc` |
| 57 | `lemma` | [expGrowthSup_sum](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-sum.md) | 359 | `result-track:406fa47b9d09935e30eeaaf8c56d49f351aeceb155f183f4cd5e8cacbc7621de` |
| 58 | `lemma` | [le_expGrowthInf_comp](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthinf-comp.md) | 376 | `result-track:25fea30c1cb0f9bbb1f17791f4d7d1f43438eb6afdca897470e718454237ba35` |
| 59 | `lemma` | [expGrowthSup_comp_le](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-comp-le.md) | 382 | `result-track:5d159da9e9f394e103dc5f597cd14d359d724b58f1c501ac59339cbd0a8d5f74` |
| 60 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-nonneg.md) | 391 | `result-track:1e2de61debb5c265bf41c4d7943af7508e7b10ecf38bdfe36fb135e59eb4f13b` |
| 61 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-nonneg.md) | 397 | `result-track:e4557e035eb6b8293f546177a66b7729f6b204b5ec1b2aba0caadd602ba14fad` |
| 62 | `lemma` | [expGrowthInf_comp_nonneg](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-comp-nonneg.md) | 401 | `result-track:d738aa8e1ff51e3eef0382248ce875e8fe6e00fc3c98a657ce726f9a4c891368` |
| 63 | `lemma` | [expGrowthSup_comp_nonneg](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-comp-nonneg.md) | 407 | `result-track:da497de00a33f413007739c169946968ceccb786598a5b132f00e14c288d4d57` |
| 64 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-comp-le.md) | 411 | `result-track:e6f6d0b956058ae8bb36ff07641fb39c08b65df297785fb9ed34b97307f4fc4b` |
| 65 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/le-expgrowthsup-comp.md) | 417 | `result-track:06a018ae6ee8285f777bc49605c9b4e624f47f0e71815662caa3572cfe84add1` |
| 66 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-comp.md) | 422 | `result-track:4ab3d75bb789d0b0cb01851dc1129ac5a8fa7cabbe632b6be84c3aee2f598314` |
| 67 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-comp.md) | 427 | `result-track:7acdc6a179e98883bbf5d5dfd27c1e6d77e83dc39e0d2ddcd0631a801dda0e0c` |
| 68 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthinf-comp-mul.md) | 432 | `result-track:b914ded8153ff8615e8d6df84f1ff2a05ff7583d4e31a0670567a1b3335fd087` |
| 69 | `lemma` | [Exp Growth Namespaced Public](../../../../FunctionalAnalysis/ExpGrowthNamespacedPublic.lean/declarations/expgrowthsup-comp-mul.md) | 436 | `result-track:a37b478563444f8e0a8d866582edf55427849f1bc8d592d10b0edee00d9aa0fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eec3b8ac88b268e57b0b7288b41ac23be674cc19475e82cecd46ab52adb2501f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant3a1b75994e6bdaacf089e45b084c8715a9427ce6645a2ba680205fdd30a83128.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant3a1b75994e6bdaacf089e45b084c8715a9427ce6645a2ba680205fdd30a83128.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
