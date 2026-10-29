# Verification target: ENat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e03492103ebc80673d007bed8ea44dbaa8937aa6",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e03492103ebc80673d007bed8ea44dbaa8937aa6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean.json)

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
| 1 | `def` | [ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat.md) | 53 | `declaration-track:5f7e9b7982eb175a99c2a18e1685a7826c508c70993b00e4b9b4de3021d111e7` |
| 2 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/instance.md) | 57 | `declaration-track:65469ee428c84a9667cb8066f2d92b7f6f24b97098459af039dcee5f262f8596` |
| 3 | `lemma` | [ofENat_top](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-top.md) | 59 | `result-track:9e4a13c551f55384d851669a0485207c42f8feafebadb155b5c8f25e55fc2403` |
| 4 | `lemma` | [ofENat_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-nat.md) | 60 | `result-track:992aa46a504fdc03dbad1d3559b083d62625c5a20f563fbebcdc2f16ef5ae517` |
| 5 | `lemma` | [ofENat_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-zero.md) | 61 | `result-track:4da7a34a13504f533ed70d4e469c0690a528642b138167f242f0044592d19e80` |
| 6 | `lemma` | [ofENat_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-one.md) | 62 | `result-track:89b674ab339abb0946b70ec1f4c71c7503072dc4c22941c2d13d36f5b5979afa` |
| 7 | `lemma` | [ofENat_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-ofnat.md) | 64 | `result-track:33e5fdf28f5d86032570f47486197c742ff689b0313f5776c49dfcc65f0eeba2` |
| 8 | `lemma` | [ofENat_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-strictmono.md) | 68 | `result-track:afbcdd6ba8f0ec561166157ef006cd2041b802ed6c47b06ad6d26e02d8589914` |
| 9 | `lemma` | [ofENat_lt_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-lt-ofenat.md) | 72 | `result-track:270ba5d3dca14e2184c8bcd201783f2baa2d0ae4089be5879b641007eb3a96bd` |
| 10 | `lemma` | [ofENat_lt_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-lt-aleph0.md) | 78 | `result-track:bf6a06bfa5247d2604a182a34d57f47f67b91a1ec7b1948435864e846fc1ba05` |
| 11 | `lemma` | [ofENat_lt_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-lt-nat.md) | 81 | `result-track:63c928d2290b598c9a049c32774f4d76ed3cfa4b6f4dcbe90896ff04b597be0c` |
| 12 | `lemma` | [ofENat_lt_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-lt-ofnat.md) | 83 | `result-track:8e5c849e339efbcd7c4bc75718e95a0cf5ad0f74f9586f7f923f229df2ef6220` |
| 13 | `lemma` | [nat_lt_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/nat-lt-ofenat.md) | 86 | `result-track:c3973df141cbc60a953fb7c0040d2df0e10196cb8d7a648b94265fb75050a597` |
| 14 | `lemma` | [ofENat_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-pos.md) | 87 | `result-track:8bb20d41769392626b63cd23dcaf7720a2ee0d8467f01901fdeb592daa28db36` |
| 15 | `lemma` | [one_lt_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/one-lt-ofenat.md) | 88 | `result-track:48482dec3e245f88b0ef9606c58410bac898bac2e397a178b496e571f1be4660` |
| 16 | `lemma` | [ofNat_lt_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofnat-lt-ofenat.md) | 90 | `result-track:8b03cae2992fbbfe718d78015177915bd24e74cbd10b4a57dea2ccb03091b934` |
| 17 | `lemma` | [ofENat_mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-mono.md) | 93 | `result-track:d746ba8f5cc7abcb5328824de137a0d15515dd48a8ff9014fdbd2212f3cbf958` |
| 18 | `lemma` | [ofENat_le_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-le-ofenat.md) | 96 | `result-track:0d04f8ffe9de42fc1392e4b6145e4f0646be302182a26a8aaad16384eb2c2fd0` |
| 19 | `lemma` | [ofENat_le_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-le-aleph0.md) | 100 | `result-track:0fd25ee7c678921ee8bffc2c5edb1138fe2f7f90fcbbbb25430a8bf6e7bbda24` |
| 20 | `lemma` | [ofENat_le_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-le-nat.md) | 101 | `result-track:1cd4ac67de3879f548a60011a56f13931196cecf8f8a22b38a27689144ce4ffe` |
| 21 | `lemma` | [ofENat_le_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-le-one.md) | 102 | `result-track:0d14f1da4ae2ba174d90f780180aae878e90aa13a1c00b6b466acde43b1089ab` |
| 22 | `lemma` | [ofENat_le_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-le-ofnat.md) | 104 | `result-track:e27f03d440460215686fd1fc9a3fc20484a1ca3e4440cf910420b3a44f5abd39` |
| 23 | `lemma` | [nat_le_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/nat-le-ofenat.md) | 107 | `result-track:0123713a9902f27b2149bcc9ddc1f7ea11af2c31d0aacb6ad65fa5212006cf96` |
| 24 | `lemma` | [one_le_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/one-le-ofenat.md) | 108 | `result-track:af536182096f00c46b0531cfccbdd7f263258fe88c6ade41d74dd007e3163e47` |
| 25 | `lemma` | [ofNat_le_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofnat-le-ofenat.md) | 111 | `result-track:17999a4854540715797e85f6371c5c6866583c01de1311470bb503f635464012` |
| 26 | `lemma` | [ofENat_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-injective.md) | 114 | `result-track:554d530175dcf6f5c7dcfff01c170fd73b2a987a5904e9eb5c7adaf4a77961f8` |
| 27 | `lemma` | [ofENat_inj](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-inj.md) | 117 | `result-track:25e0e16a4369bcbbf22295dd2110e9be80358ec6c957a9dc340e02c55dda6f83` |
| 28 | `lemma` | [ofENat_eq_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-eq-nat.md) | 119 | `result-track:411ffdf27c933f662a735f79656c345acc896453eab73ba6a50e9e429642fb0f` |
| 29 | `lemma` | [nat_eq_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/nat-eq-ofenat.md) | 120 | `result-track:27098c349b2f514758d92fb19937f4b34af0e37cc4f3cdc83f835ef074582041` |
| 30 | `lemma` | [ofENat_eq_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-eq-zero.md) | 122 | `result-track:0cfcc862c8fd7eaee3a1c88b8c35a1d17d61a47f7af7b50f79b19612a4c2d11c` |
| 31 | `lemma` | [zero_eq_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/zero-eq-ofenat.md) | 123 | `result-track:a03b8025aa6c45c89105d42be7c095a5f491a4635f50a706fc204a43b658ce34` |
| 32 | `lemma` | [ofENat_eq_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-eq-one.md) | 125 | `result-track:02966cc85ed7ab411ab198de2ae2f42cf31378bba09b9a930b2887c44dce528a` |
| 33 | `lemma` | [one_eq_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/one-eq-ofenat.md) | 126 | `result-track:13058c5bf9bfa9dd19cfcbba33c72d8040e8eaf533e454f1993a68a4cd72e602` |
| 34 | `lemma` | [ofENat_eq_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-eq-ofnat.md) | 128 | `result-track:6c7f0aea77e740d7d760dc4336d967c3df62db070e586a81c40292f2b1c6111a` |
| 35 | `lemma` | [ofNat_eq_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofnat-eq-ofenat.md) | 131 | `result-track:7edd7a1ad617a4c9da1c8b37afd0d5082aaee992e6e410723c6f4a73c0d3d94f` |
| 36 | `lemma` | [lift_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/lift-ofenat.md) | 134 | `result-track:4eb578fcc3dfea05352dc75e0e939cf5322787a430b2101ef74926fd09e4ab34` |
| 37 | `lemma` | [lift_lt_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/lift-lt-ofenat.md) | 138 | `result-track:d59be9e1a6befb0ea16f6774c29b53a4b28d9e18245dddeeb9cf4c4097709e96` |
| 38 | `lemma` | [lift_le_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/lift-le-ofenat.md) | 141 | `result-track:951b3b7fe24a5052da7aa64b7536d7b0ec6f8bd62283ffde928ef39702f9e87a` |
| 39 | `lemma` | [lift_eq_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/lift-eq-ofenat.md) | 144 | `result-track:3502091ba8eaf55a215cc980fa03d9fa55fa9b5af49f728005c800bc0b5ebaf4` |
| 40 | `lemma` | [ofENat_lt_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-lt-lift.md) | 147 | `result-track:98e0604e9fdf22e7c189e17c5426173bb3492a649d85f2dc625dfc157f4e6d28` |
| 41 | `lemma` | [ofENat_le_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-le-lift.md) | 150 | `result-track:eb3edfb94c03391e7748c53c6811edaa5ebd15ef42a2e344c0a94bebe6ddca61` |
| 42 | `lemma` | [ofENat_eq_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-eq-lift.md) | 153 | `result-track:a541697c3490271c9186d51a4330d844bd480d778f91c58cdadf3c3f3924cae8` |
| 43 | `lemma` | [range_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/range-ofenat.md) | 157 | `result-track:15bf4bcaa6f22397bee7008b698a62d2973dd851f11594fb4e011a233bcd323f` |
| 44 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 164 | `declaration-track:a7998a240616b9c5c98e3e428341da0b17ef0d4fe09b205a0d8010ae868aaacf` |
| 45 | `def` | [toENatAux](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux.md) | 168 | `declaration-track:fdf6085afed261b9fd3ec66f6d2f6faa52f38389c6eeb04d02316610d4498810` |
| 46 | `lemma` | [toENatAux_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-nat.md) | 170 | `result-track:11d2b3b6541a52b73984f85dcf3168c965b760ead1acd7bc143fe11b24ca4055` |
| 47 | `lemma` | [toENatAux_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-zero.md) | 171 | `result-track:c94e959ccc962c046fa281db8bd9f3f4cbb58f3e0c992f71a98ddf064b05cd51` |
| 48 | `lemma` | [toENatAux_eq_top](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-eq-top.md) | 173 | `result-track:9b6e2966ad7e0d0a33586e05ba9f1fc8749524fb0282a4331299651b4e4f7641` |
| 49 | `lemma` | [toENatAux_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-ofenat.md) | 176 | `result-track:62d6fcfeaad8cbc6827a66959e13c5300885c43ddf1d28d646fc80ebb8d6a698` |
| 50 | `lemma` | [toENatAux_gc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-gc.md) | 182 | `result-track:50d05cf8c38e3cf1fb5d77af239b5da75fb30600e9376689ffed1bb7e0f80911` |
| 51 | `theorem` | [toENatAux_le_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-le-nat.md) | 187 | `result-track:e5a669e490d187ad99332a21b16e4bad67f65c79631c45051d35776d1923b1d6` |
| 52 | `lemma` | [toENatAux_eq_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-eq-nat.md) | 192 | `result-track:5648fe4081bf4d0ef9089fa0f709615eb36ef0318b9c5cebb866beed239c0a55` |
| 53 | `lemma` | [toENatAux_eq_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenataux-eq-zero.md) | 195 | `result-track:c8411edc1cec9e9a90dd027c4a7157af072acf0d0bbc24b1b1bc796b893d443b` |
| 54 | `def` | [toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat.md) | 200 | `declaration-track:c990bee2d033b66d3b48b5914a652434bf4b229704120e22983e2df455c43238` |
| 55 | `lemma` | [enat_gc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/enat-gc.md) | 230 | `result-track:8b8880e9f1a32770f54224225a06cf644c6de31e57f283d4bb3116989dd44aaa` |
| 56 | `lemma` | [toENat_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-ofenat.md) | 232 | `result-track:e87c557806b4dca21df0fc2f502775361c5d95ebe15a9bd3ed4852606e1f9b7f` |
| 57 | `lemma` | [toENat_comp_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-comp-ofenat.md) | 233 | `result-track:b77c4b234559cc551e1e2fa5cd104824088093fd4b10425460c62dee603b3618` |
| 58 | `def` | [gciENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/gcienat.md) | 237 | `declaration-track:1109fa95bb60bb21131e564db3bf39983d4d537fb2687ecd1490d874fc455f9b` |
| 59 | `lemma` | [toENat_strictMonoOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-strictmonoon.md) | 240 | `result-track:996b0dd25e7b84492235501dceb9cb613feb70f6ab5ab37ff656709171cabc2e` |
| 60 | `lemma` | [toENat_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-injon.md) | 244 | `result-track:901b3f522fc55e934cac048d9a9c03be0658d153e4ebc4736f828f8c8edfa53c` |
| 61 | `lemma` | [ofENat_toENat_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-toenat-le.md) | 246 | `result-track:4690f3c1d251bde61d5b51486a3cdb167c633c9f5fc6f99753b1748efef4dfac` |
| 62 | `lemma` | [ofENat_toENat_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-toenat-eq-self.md) | 249 | `result-track:7a33cec4bfa8c7e8b4ed2b931b04316d1653f7d67985aa1b34e12b1a5f9b77db` |
| 63 | `lemma` | [toENat_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-nat.md) | 255 | `result-track:1b2a9d983adf1fdcddd3b0d1883067448c9a015f2357f494554e25ff88750dd9` |
| 64 | `lemma` | [toENat_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-ofnat.md) | 257 | `result-track:f061f07d24760b105fd58d89c1b94ab5af77e6b17b7ed4e1791a43a80728b83f` |
| 65 | `lemma` | [toENat_le_natCast](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-le-natcast.md) | 261 | `result-track:22e3110cba02e77a8e0c72cd086620329b37691b641ab6cca77b81ee844a3c3e` |
| 66 | `lemma` | [toENat_le_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-le-one.md) | 262 | `result-track:0bc52485faecdfe9f442803b2be8fa5d9dc615fbaa2783fffb00c45fe628e6fd` |
| 67 | `lemma` | [toENat_le_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-le-ofnat.md) | 263 | `result-track:81ce3a5c7489d4211d955a567676b2c25e95a2db4c6cafd9e8214e609b9147d3` |
| 68 | `lemma` | [toENat_le_iff_of_le_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-le-iff-of-le-aleph0.md) | 266 | `result-track:4bb9682f87c579f2b2be9fb84b1f82672a2b298cf9e7f6e9e19fff83cdb2f841` |
| 69 | `lemma` | [toENat_le_iff_of_lt_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-le-iff-of-lt-aleph0.md) | 269 | `result-track:6e996283aca23781992288d5931d7b48badf8fe624611ea2da1753fe34beb7c7` |
| 70 | `lemma` | [toENat_eq_iff_of_le_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-eq-iff-of-le-aleph0.md) | 272 | `result-track:89fd2ebddcf18f1e1065d0636f96f13f360965eb6e4acfeea6d90abd580b808e` |
| 71 | `lemma` | [natCast_le_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/natcast-le-toenat.md) | 275 | `result-track:c42f430022c2d582cdc07eeff34e97db41e16172b3cf9351fd54610f0aae5b37` |
| 72 | `lemma` | [one_le_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/one-le-toenat.md) | 278 | `result-track:4bdec286c997488bc1cdbab84c48ff6d6389ca28b8f8b0b94c20cb3ba88cb4c7` |
| 73 | `lemma` | [ofNat_le_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofnat-le-toenat.md) | 279 | `result-track:5cdd1426bee028a0c9c3d6bc2b442f5ae1a8958ca89c540607fb5424363bc8d8` |
| 74 | `lemma` | [toENat_lt_natCast](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-lt-natcast.md) | 282 | `result-track:0799b3e250697fcfe71776c71e749bf3b67c722b5636c5141ed5289fa5d464d9` |
| 75 | `lemma` | [toENat_lt_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-lt-ofnat.md) | 283 | `result-track:5c166e029e80db799222e23b7b55fcbc6e264fe867e43c6585bf6820d41082f5` |
| 76 | `lemma` | [natCast_lt_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/natcast-lt-toenat.md) | 286 | `result-track:52f202172e8a4f7926f144b4163b037a044e007226c839e5beab56f19ab2969d` |
| 77 | `lemma` | [one_lt_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/one-lt-toenat.md) | 287 | `result-track:3ce838bd055250a252c955ef1e8f667f4c7ca220594691aea967849b88269b50` |
| 78 | `lemma` | [ofNat_lt_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofnat-lt-toenat.md) | 288 | `result-track:4d54a0ecc25b08321f793f81e950f54d43b62daecb4ffe9b8f1328b11cc06f02` |
| 79 | `lemma` | [toENat_eq_natCast](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-eq-natcast.md) | 291 | `result-track:90aa25a48bb4ab76c054149e9040d1f8fffee61b71a5098bd281fb94827b366d` |
| 80 | `lemma` | [toENat_eq_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-eq-zero.md) | 292 | `result-track:b937c5fc224c81cfeb3ceab8625bb6cdb4a32b045d74dd9273910f4405884290` |
| 81 | `lemma` | [toENat_eq_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-eq-one.md) | 293 | `result-track:463b79a7ad73f261d82fd3cebd96b34dde9ba1c92096ab717196d02c051547e6` |
| 82 | `lemma` | [toENat_eq_ofNat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-eq-ofnat.md) | 294 | `result-track:c87281a9f26ae509efa6d265b3068e2a4455d67b04e3be8ae603b4d9a7338d88` |
| 83 | `lemma` | [toENat_lt_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-lt-one.md) | 298 | `result-track:879e0c2fab74bc2d3ed981dea570756e24c395e14c7c1ae826f58102c977ed4d` |
| 84 | `lemma` | [natCast_eq_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/natcast-eq-toenat.md) | 300 | `result-track:eb6fd54d6baa8ac110e17721232f59cedb10154829171a6de421cb48be60c4fe` |
| 85 | `lemma` | [ofNat_eq_toENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofnat-eq-toenat.md) | 301 | `result-track:b2bcf47aa1cbe02a3c9cbe257587643a8068d7902e522b2d94a866fa76233228` |
| 86 | `lemma` | [toENat_eq_top](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-eq-top.md) | 304 | `result-track:6c60ac1ee10da4e0b4099335b080717259b519540b9f5c9a236334c0c9563f9c` |
| 87 | `lemma` | [toENat_ne_top](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-ne-top.md) | 306 | `result-track:71eed316ba28ce475389f244e2cb77e83901b4fe0309b70ba5f866c3a010f38f` |
| 88 | `lemma` | [toENat_lt_top](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-lt-top.md) | 308 | `result-track:b31de0d5c60ffdd2998289ae0a88abad0c2b47d954ab6b839c627bfa905ff62f` |
| 89 | `theorem` | [toENat_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-lift.md) | 311 | `result-track:9ed7b9335c1080579b5a8dd82c23d4146193bc85046d24a56faf274348b64eb4` |
| 90 | `theorem` | [toENat_congr](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/toenat-congr.md) | 316 | `result-track:75361ebe0484aa6c3b541b332dcac0e75c0398ecef5c5fb46c913d11d3c3de09` |
| 91 | `lemma` | [ofENat_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-add.md) | 320 | `result-track:8b2b645fb941248aac1555ed26ca876d1a584d0cd969efdb1df932b55829f19b` |
| 92 | `lemma` | [aleph0_add_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/aleph0-add-ofenat.md) | 322 | `result-track:d6fee06366dd8619bff59450eb040bd1f6a7cc1580553a95b548679e38bc6b03` |
| 93 | `lemma` | [ofENat_add_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-add-aleph0.md) | 324 | `result-track:64c5cc250eb1c0082f304be4a36d6a98d68a40b6b0b345dafea01e27829d7712` |
| 94 | `lemma` | [ofENat_mul_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-mul-aleph0.md) | 326 | `result-track:57fe5dd694607d08fd7c58e8c274234bb683f7b6f07207a88d1143783bb5bb95` |
| 95 | `lemma` | [aleph0_mul_ofENat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/aleph0-mul-ofenat.md) | 331 | `result-track:8763dd0c388995bfc6f031ca9d263c3f761d3c333964eaba99b3a0440efe4ec3` |
| 96 | `lemma` | [ofENat_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenat-mul.md) | 334 | `result-track:ab30d3ed5e464343b32fa8eaca27c2332d9d2252de6f4e68a0a1398d5709ec25` |
| 97 | `def` | [ofENatHom](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ENatNamespacedPublic.lean/declarations/ofenathom.md) | 339 | `declaration-track:c6224c77cac27ddade59bae40ae94eb11db1cade1d64f9d3bbbaea1303a31a32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f83f40e97764e75888695a5ad1064c853df4eb0ea5055ab120a455b16e43715e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variantf9b6c25bb529c0602f4cafd50e083c25e266839666bd49cc154f18b6926853e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
