# Verification target: Order Disjoint Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e78dca5e49c0822ee44b30e5be0b9e29a67b290",
  "lexical_observation_count": 140,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante0e1583e22a89593e961200803991dfed667a3b2ab310e86f61c704df54a26f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e78dca5e49c0822ee44b30e5be0b9e29a67b290`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante0e1583e22a89593e961200803991dfed667a3b2ab310e86f61c704df54a26f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante0e1583e22a89593e961200803991dfed667a3b2ab310e86f61c704df54a26f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint.md) | 49 | `declaration-track:be694e7ec7ec2130e275a670ca507684849ce8314f5ef1cd374be4a1895d9903` |
| 2 | `theorem` | [disjoint_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-comm.md) | 53 | `result-track:157ef7f327944863c5c20df79f23a80d0d593f333edff0dc0711782a25b0d268` |
| 3 | `theorem` | [Disjoint.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-symm.md) | 58 | `result-track:7b7ce113d1e5408b50bdb722252491d58c40eda8c8f117d56fd2e8df86554c3d` |
| 4 | `theorem` | [symmetric_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/symmetric-disjoint.md) | 62 | `result-track:b43eba959fe12987a5aae208b2c85c5624bad66f260bb3cfd1d199293dadd358` |
| 5 | `theorem` | [disjoint_bot_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-bot-left.md) | 67 | `result-track:458db6b5decdd3061a5668a12c9d4ffb8162e9b0ea2be86c18769e2ecef64235` |
| 6 | `theorem` | [disjoint_bot_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-bot-right.md) | 71 | `result-track:75c60c114140dbd68598d859592a626eb167cb3247cea1b08b2b8778ac5d3ba0` |
| 7 | `theorem` | [Disjoint.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-mono.md) | 74 | `result-track:2ac8044f21afcb05b40201e71a3b49906d79e34ff84aa55a9f7e9ccfce5b371c` |
| 8 | `theorem` | [Disjoint.mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-mono-left.md) | 78 | `result-track:9d2e0034be2dcb31b5b472c752fb566023d8b3e5387871dba0dae12e5235928f` |
| 9 | `theorem` | [Disjoint.mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-mono-right.md) | 82 | `result-track:5969895d1b62872394aa3fd6825cfb0c9f65691575610d2e835d8507a08f6daa` |
| 10 | `theorem` | [disjoint_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-self.md) | 87 | `result-track:f37e7924e42ef77b4b0ce881bb78ac249523d6f28fde14c873dc42fb7f4cb9ea` |
| 11 | `theorem` | [Disjoint.ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-ne.md) | 96 | `result-track:cbd2688d13bc46b76a6c753182c29e4276d2e45666d9fb02b2e3b99a0e31daaf` |
| 12 | `theorem` | [Disjoint.eq_bot_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-eq-bot-of-le.md) | 100 | `result-track:825e6d1f9ada56d19ca860394c5bc20a9c63756803ed2462f98cecc42ab97cd1` |
| 13 | `theorem` | [Disjoint.eq_bot_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-eq-bot-of-ge.md) | 104 | `result-track:daff4d15ad95c4df3b8cff77ab9c879cf51bfebe59afe106e2e38b54b4cfc8b5` |
| 14 | `theorem` | [disjoint_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-top.md) | 115 | `result-track:374159593a99956f6eee6f248b0bacebe52d6456e41a410ae1f6a512993a65e4` |
| 15 | `theorem` | [top_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/top-disjoint.md) | 120 | `result-track:d753e74dbfb6a5301820764d74e9e747668321594db69dafa9b196f781632647` |
| 16 | `theorem` | [disjoint_iff_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-iff-inf-le.md) | 130 | `result-track:608866091e688bef7c68a5984c08eec59b1d2b31adc994e6b7e5ea7e095cda2e` |
| 17 | `theorem` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-iff.md) | 134 | `result-track:6f9b5216d6507b36c7c4186cbb9f91d802bd636c930633d7e4fddd06fb50df44` |
| 18 | `theorem` | [Disjoint.le_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-le-bot.md) | 138 | `result-track:95fad572f3f3347fba0eb0612336ef6a7947b96c93621b886de91138dcbf5309` |
| 19 | `theorem` | [Disjoint.eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-eq-bot.md) | 142 | `result-track:14b479a39cc400f95d641dec8716c310fed526f655a26cade7a655f80d5b2a58` |
| 20 | `theorem` | [disjoint_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-assoc.md) | 146 | `result-track:b2f929b545ac7530d1234fb8e77f3fffed6abfd87878c0d3843a5257b983c9e3` |
| 21 | `theorem` | [disjoint_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-left-comm.md) | 150 | `result-track:939041336332955da2ceb03c33227945585672798feb35511563433eb8ac827b` |
| 22 | `theorem` | [disjoint_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-right-comm.md) | 154 | `result-track:ab46df050dab5a5bd62c43872d5d50e9ded72064a9c445d1e71bf4a160231d1b` |
| 23 | `theorem` | [Disjoint.inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-inf-left-source-edition-2.md) | 160 | `result-track:e21f4ba99a09a3fc67c7d5697c0702012c9aee0cab47543364183f7b0f35af96` |
| 24 | `theorem` | [Disjoint.inf_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-inf-left.md) | 164 | `result-track:4e337e80f56958237efbf3eeed27adea86116b561ef9fcf7bfc0ef1c4d08f951` |
| 25 | `theorem` | [Disjoint.inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-inf-right-source-edition-2.md) | 168 | `result-track:af0d2f21daa511fd967e26e8fa8f27ae87931abbff4eced38340878c6f0ff453` |
| 26 | `theorem` | [Disjoint.inf_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-inf-right.md) | 172 | `result-track:1d2796ee4854dfde0d2a26c3d7efc4b98d726d13b35d1dcbd0f2eda4e5c0e79f` |
| 27 | `theorem` | [Disjoint.of_disjoint_inf_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-of-disjoint-inf-of-le-source-edition-2.md) | 178 | `result-track:b4bcdad18c943bda393bccf81948bdd2508d4b8da69ab808340c398841607124` |
| 28 | `theorem` | [Disjoint.of_disjoint_inf_of_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-of-disjoint-inf-of-le.md) | 182 | `result-track:455a1879cc51324c095c0403b9564159c628259fc16d9d01ce675fd6af15af0b` |
| 29 | `theorem` | [disjoint_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-sup-left-source-edition-2.md) | 193 | `result-track:df2d98945e07d488b35b2b463900e2a238efacde9d517fbebd4634b6a73c4fce` |
| 30 | `theorem` | [disjoint_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-sup-right.md) | 198 | `result-track:9198692563ed3cec2a39ea224d28b521aa95d7d9a147c3dc31966aa1468f80aa` |
| 31 | `theorem` | [Disjoint.sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-sup-left.md) | 202 | `result-track:9ceb42c0a2609a483d88e95b05bf4df00b1a9c77fa1d1d5a2797fbb9b020bb37` |
| 32 | `theorem` | [Disjoint.sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-sup-right-source-edition-2.md) | 206 | `result-track:f010bc567ffd6d30b7829f435f4d97d71cc740010a0d19c9745c6afda631e9d9` |
| 33 | `theorem` | [Disjoint.left_le_of_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-left-le-of-le-sup-right.md) | 210 | `result-track:efd3759abaf2db528a7fb4c15946eb76ff7b7d557072a87d317d9166919815e2` |
| 34 | `theorem` | [Disjoint.left_le_of_le_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-left-le-of-le-sup-left.md) | 214 | `result-track:ba6c4ad71d50f1279d73b92c3bad00167106dfdc6a2829dd9d860ef7a35d65f6` |
| 35 | `def` | [Codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint.md) | 233 | `declaration-track:fee347b8c190da2e3fe8b9e0ab8c07f0302fc6d7845c8ff225c1462256034818` |
| 36 | `theorem` | [Codisjoint_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-comm.md) | 237 | `result-track:b6ada6d7af72ce256fff5a69c4939feacfddd27876e269c83c572259855d6108` |
| 37 | `theorem` | [Codisjoint.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-symm.md) | 242 | `result-track:70391669737a3fad04070ef40bf9c09f537d71bded57d5e25b34dbf0d45a5301` |
| 38 | `theorem` | [symmetric_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/symmetric-codisjoint.md) | 246 | `result-track:1ba96e9105a45255e776eb2482549499913ee0a6b84900adfa7614c86062c241` |
| 39 | `theorem` | [codisjoint_top_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-top-left.md) | 251 | `result-track:5b7f1efefde737be326277b45cbc352efbfadcc530ab11e0bca82fb4bae70018` |
| 40 | `theorem` | [codisjoint_top_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-top-right.md) | 255 | `result-track:94f44dd4da8dbc141e577a20b014b41aaf71305a2beda747c8faec833118bddf` |
| 41 | `theorem` | [Codisjoint.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-mono.md) | 258 | `result-track:63a94d922def5524615b3ecf5ce4107abe3bb46a0eed4378635befa1b3ea3759` |
| 42 | `theorem` | [Codisjoint.mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-mono-left.md) | 262 | `result-track:739ab3a1b14daed314709a551fcb2ca4c911ee7aeebc4061c4fa7c08cf3436f1` |
| 43 | `theorem` | [Codisjoint.mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-mono-right.md) | 266 | `result-track:f034a065e994779cedaa655c6a38cf25929a294c42d6318e441d10c2676530d1` |
| 44 | `theorem` | [codisjoint_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-self.md) | 271 | `result-track:cbaab31ceb3145754bbc4622a339324756865207d8100c062eee66ae617d3f5b` |
| 45 | `theorem` | [Codisjoint.ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-ne.md) | 280 | `result-track:d20685854a89d60cf953b4790dc72cbcf9996882700e5faeff4cd5b6863f2f49` |
| 46 | `theorem` | [Codisjoint.eq_top_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-eq-top-of-le.md) | 284 | `result-track:4ce1d67dc4fe2fbd794fb99f10062e1f032a2d53c58fa3b5e9dc62fba2e99ac4` |
| 47 | `theorem` | [Codisjoint.eq_top_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-eq-top-of-ge.md) | 288 | `result-track:a890d55f2dabb50fafb8d2b484d3cf211b08c59ef1721f40b1c01e2bef7da4b2` |
| 48 | `theorem` | [codisjoint_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-bot.md) | 299 | `result-track:33996de33425162b4efa7fed97182a05e0a33b6653734791b46d562ae3af2568` |
| 49 | `theorem` | [bot_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/bot-codisjoint.md) | 304 | `result-track:a89dd8d9256f7195d2cd345ab23a40825bfd7fa872bfa3584c710cfd591da732` |
| 50 | `theorem` | [codisjoint_iff_le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-iff-le-sup.md) | 314 | `result-track:099efbd5214ce0bb2286c9947525769204f2e1d8428d12e5dcc65d3a8e49555d` |
| 51 | `theorem` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-iff-source-edition-2.md) | 318 | `result-track:87cdc1dc519f2b9cdb605828e47019d721b0b0f3ca374d1bd52c0bb6a5eb6207` |
| 52 | `theorem` | [Codisjoint.top_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-top-le.md) | 322 | `result-track:a63504bd7d7bae0c5dbac249c1f763d0606b6db6b208aac33b486aa62c9e6f44` |
| 53 | `theorem` | [Codisjoint.eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-eq-top.md) | 326 | `result-track:cab77e08cbdf8db231141f3c2c46dd69541dd8dadfd06e8fe60f57ed2a3c7a3d` |
| 54 | `theorem` | [codisjoint_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-assoc.md) | 330 | `result-track:d6084942335e256ae60f61e01a572dcfa82e9c6ca6d29c42271480998116ce3a` |
| 55 | `theorem` | [codisjoint_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-left-comm.md) | 334 | `result-track:287e7d19a674943052df9840f672e4eef4358de70f96434a446c2f24a9c45bf7` |
| 56 | `theorem` | [codisjoint_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-right-comm.md) | 338 | `result-track:6f3392623414a8b198353ee273f9d49d5e76fe93ca7b2ed9112b3940b6433f07` |
| 57 | `theorem` | [Codisjoint.sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-sup-left.md) | 344 | `result-track:ade268eb0470bcd4fbde3295af9ec1baca1ea733ea32465bc24e49261efcf064` |
| 58 | `theorem` | [Codisjoint.sup_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-sup-left-source-edition-2.md) | 348 | `result-track:b98e556f58302cd0d85432eeef2cc6129d94e532cd595bb59654a06654adfbb7` |
| 59 | `theorem` | [Codisjoint.sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-sup-right.md) | 352 | `result-track:61ce2811802266feb8ff8513811d9b099290cf53191a2dffae785b975e7d82be` |
| 60 | `theorem` | [Codisjoint.sup_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-sup-right-source-edition-2.md) | 356 | `result-track:c7e0d97de10dffcd4948cce37739d3904a9697043865c9785fd365e6319137b1` |
| 61 | `theorem` | [Codisjoint.of_codisjoint_sup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-of-codisjoint-sup-of-le-source-edition-2.md) | 362 | `result-track:7b2f7f1b623702bc5d2d26af1e530993b7266caeedeccb44c3e27f68d96383fb` |
| 62 | `theorem` | [Codisjoint.of_codisjoint_sup_of_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-of-codisjoint-sup-of-le.md) | 367 | `result-track:784c1fe2b4527059821d72fd34df31b974d656de5de0809cef64876bbf83359d` |
| 63 | `theorem` | [codisjoint_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-inf-left-source-edition-2.md) | 379 | `result-track:f907ffa6f2d6b751eb356a0a3986bf3a8e452c64b105f26f46054f49f2843b76` |
| 64 | `theorem` | [codisjoint_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-inf-right-source-edition-2.md) | 384 | `result-track:f31664dd280b86747416b61ad8c95e2b5362d1abb808df78a1ada122636e23e3` |
| 65 | `theorem` | [Codisjoint.inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-inf-left.md) | 388 | `result-track:92b1c7e7b218e048229ce2d7e7647d2a228c0377ff7affe4c456c4892bb6178a` |
| 66 | `theorem` | [Codisjoint.inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-inf-right.md) | 392 | `result-track:470dfce9929bac0c0b1c5605ddded160add2194866f1100db9f910f3f6f6d7b0` |
| 67 | `theorem` | [Codisjoint.left_le_of_le_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-left-le-of-le-inf-right.md) | 396 | `result-track:2f8bd0ed99ff08a1c5c03d3211c1b20a6dd03462838b60173d307b1a1252002b` |
| 68 | `theorem` | [Codisjoint.left_le_of_le_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-left-le-of-le-inf-left.md) | 400 | `result-track:b23c48e0adc9ca2b2f4e50d1fc1413d57b97dc3226712c3a63dd6dcd44dd081e` |
| 69 | `theorem` | [Disjoint.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-dual.md) | 410 | `result-track:ab41f2e0f7f3121969cc2f1009388e604d6cb5a0f9db0295510d9ba50c8966c9` |
| 70 | `theorem` | [Codisjoint.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-dual.md) | 415 | `result-track:2c2f0d63b8869379ec3526a456a9502bc4085f51e69c22594a0f2c8c4cb6d8ab` |
| 71 | `theorem` | [disjoint_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-todual-iff.md) | 421 | `result-track:df626b12f53308b6a5db3cbdc52f7be6937c5f3b8a60f9fbe6d15ad7537e9507` |
| 72 | `theorem` | [disjoint_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-ofdual-iff.md) | 427 | `result-track:a93617b63b5ae6f0ebd6cf7c87f542ed383ff8e4facc47aac0cd62a63f25b7db` |
| 73 | `theorem` | [codisjoint_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-todual-iff.md) | 433 | `result-track:532a2fcd9dafdf4bc0402515467fc73ace820854dcd8f9d3f5c7c55a1a786cff` |
| 74 | `theorem` | [codisjoint_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-ofdual-iff.md) | 439 | `result-track:7cab0f44ffc958d64c4f402a5f32c0692ed4f9788dd0c23a0f334bd4879370b3` |
| 75 | `theorem` | [Disjoint.le_of_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-le-of-codisjoint.md) | 448 | `result-track:2c40dd091f8f93a943afd8668be0a2c3b1ec9fa6c7f5fa944d501cabfb55f68e` |
| 76 | `structure` | [IsCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl.md) | 458 | `declaration-track:4f57c94c82d5ce04bf58c84f168ed3e6bb9da1e81eb9cf56f9cf3bd2a5a2445a` |
| 77 | `theorem` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl-iff.md) | 465 | `result-track:d54f44cb84e8c9a65ea26d972ed18a0a38669711c101e0f81f9f5bfa0474e1db` |
| 78 | `theorem` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/symm.md) | 477 | `result-track:6103bc9abd57d152cb82cd6f9abc9ac42d5714aaef19ddb47c1acc3db772d2e7` |
| 79 | `theorem` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/dual.md) | 481 | `result-track:d945aee8d56af53675bf928249a6b1a8e883d065bc342a0d6ddb0950996cac80` |
| 80 | `theorem` | [ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/ofdual.md) | 485 | `result-track:21ff87d102d79b22bebce4549a49a5b81b35da5be5454391bb7e53475ab3be4f` |
| 81 | `theorem` | [of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/of-le.md) | 495 | `result-track:eafbe5b13c82551ddfb47aadac2af0f08798a0979b0b23c1afe355ebdf3c64f2` |
| 82 | `theorem` | [of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/of-eq.md) | 499 | `result-track:61f21873c10ba88f382de57cabb17285a040496b1072fb5f1af460591ca0f57e` |
| 83 | `theorem` | [inf_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/inf-eq-bot.md) | 503 | `result-track:d7fcae8bdeb0f1d216e484e9071d678a8dcbeb4447afa065f8843391ebb05eb4` |
| 84 | `theorem` | [sup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/sup-eq-top.md) | 507 | `result-track:221acbd0efa2e2a2eb9432d366488b502bed89afb75d175c172bbcf8355619b8` |
| 85 | `theorem` | [inf_left_le_of_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/inf-left-le-of-le-sup-right.md) | 515 | `result-track:78da9944728bd44a333b8c15a352c7e67c8989542f43abec9386c5cd470985ae` |
| 86 | `theorem` | [le_sup_right_iff_inf_left_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/le-sup-right-iff-inf-left-le.md) | 523 | `result-track:5feab8ca0daf8333e935f4a3f126d49c03d2be2d9f2ab81c3056958de1240b4f` |
| 87 | `theorem` | [inf_left_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/inf-left-eq-bot-iff.md) | 527 | `result-track:e88e9963f391d9cc156a843cdc98ad903040f517478a64ea1a6012bb7c5132c5` |
| 88 | `theorem` | [inf_right_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/inf-right-eq-bot-iff.md) | 531 | `result-track:54ae42ddf2ef9f3accf8bd08051a9c9ec683182a8e1cd4eb7d905db40365f166` |
| 89 | `theorem` | [disjoint_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-left-iff.md) | 535 | `result-track:d85d7901bb528326bee23266fb1deba11cb82647e97f7b666b0522ad46e53728` |
| 90 | `theorem` | [disjoint_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-right-iff.md) | 540 | `result-track:895efa4ee1e5f9ea2a23add7ed97b362a8ead4101ac1746e9c08c7e69b2cf7de` |
| 91 | `theorem` | [le_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/le-left-iff.md) | 544 | `result-track:abc7197c0dde68bfcbb5c29916b6b16535559a28c3e8640f44610254df438815` |
| 92 | `theorem` | [le_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/le-right-iff.md) | 548 | `result-track:8a2d97f8d9230d2611836b954e3ec2f9047b1e76b7f81dda5014abac07c0c586` |
| 93 | `theorem` | [left_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/left-le-iff.md) | 552 | `result-track:6f65d30828ee599de6cc3ccd79971a8c4841309188f3d19cbdf1c250a1c12183` |
| 94 | `theorem` | [right_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/right-le-iff.md) | 556 | `result-track:d6b87d1f60c4ec2d34f41b1b86021e01ab28cd308119c6d299c11e1889f485c0` |
| 95 | `theorem` | [Antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/antitone.md) | 560 | `result-track:d6dee688ee653817ed91bcd6b663c9bc55c743814e6bc8a13e5d73401e5dcd9c` |
| 96 | `theorem` | [right_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/right-unique.md) | 564 | `result-track:68701312704dcf98fdf58d6632e7e72b7ca1e610c3918c4566833e580b750602` |
| 97 | `theorem` | [left_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/left-unique.md) | 568 | `result-track:755a3f76bbe2d326f5f9883fc3aa8f3c3c9954cd617f132a0f1394c7038c847e` |
| 98 | `theorem` | [sup_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/sup-inf.md) | 572 | `result-track:3c294f03fae36dc08676b5873abb38a754c95c193a25332b190215675d157ed7` |
| 99 | `theorem` | [inf_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/inf-sup.md) | 580 | `result-track:c7a556b9919efc1edb4ad68e76b3218b7d83a56809dfed99d8259d3d50e3971c` |
| 100 | `theorem` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-iff-source-edition-2.md) | 590 | `result-track:fb67cb6e69e63e3046681c6486c6d44274acf61f87285db8aae6ea075aa4732c` |
| 101 | `theorem` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-iff.md) | 601 | `result-track:0cfdf9ac1c91b699e287ba086936dda7688521e2a521d671f1d13bc32d910e5a` |
| 102 | `theorem` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl-iff-source-edition-2.md) | 606 | `result-track:e15c184b375201fcc4f4f74d50364444948aef60fb213b5b739bfdceabe81c4a` |
| 103 | `theorem` | [isCompl_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl-todual-iff.md) | 618 | `result-track:34f5926cf28aaaf527c0580ed46f97829b919ce90d77c0e497c580a1bf25809a` |
| 104 | `theorem` | [isCompl_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl-ofdual-iff.md) | 623 | `result-track:8b8e794f09df129b74c8c99a0df8abd857138b1d0d08fc8cfd48c9bcef121e21` |
| 105 | `theorem` | [isCompl_bot_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl-bot-top.md) | 627 | `result-track:201bce2260caa3d3ba42981c0d6d12dcd72bfc550be1ab5f0f2af0c250ee86b2` |
| 106 | `theorem` | [isCompl_top_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl-top-bot.md) | 631 | `result-track:bb73fbc4c301642b8b14c48e7984f089d94bba51f513e45b7c6da98c6b372196` |
| 107 | `theorem` | [eq_top_of_isCompl_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/eq-top-of-iscompl-bot.md) | 635 | `result-track:22cd60663bb7714cf578b95b4e4b746b2ba344f6c95f1a945d818da6cc4e8caa` |
| 108 | `theorem` | [eq_top_of_bot_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/eq-top-of-bot-iscompl.md) | 639 | `result-track:fd3db8ad65b7fc3fa0a02e8b9509cae8dc98f45b836b14e251f5e3bf03f82b8b` |
| 109 | `theorem` | [eq_bot_of_isCompl_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/eq-bot-of-iscompl-top.md) | 643 | `result-track:d8168ac192d846e037f24090b93f47f2844fa7da69858cf76a6fc25ca455d905` |
| 110 | `theorem` | [eq_bot_of_top_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/eq-bot-of-top-iscompl.md) | 647 | `result-track:9b20055debb8649e374a46cb1761f97718c53b010b48a48120e61d26da819862` |
| 111 | `def` | [IsComplemented](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscomplemented.md) | 660 | `declaration-track:9cc0fd4f0dbe20d2ab83c942bb45e1c2dbd657aba32c3dda35769f2631b30674` |
| 112 | `theorem` | [isComplemented_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscomplemented-bot.md) | 664 | `result-track:cbfe6ebc32ad4f17998c9c9b7b7f5ce10548a005db2c864df114010ce7fb239d` |
| 113 | `theorem` | [isComplemented_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscomplemented-top.md) | 668 | `result-track:368eedce02bb84578b1e5d765493c449b6d2e8bf8deba44acba61c5abb975e18` |
| 114 | `theorem` | [IsComplemented.sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscomplemented-sup.md) | 676 | `result-track:6eb043d1da491bc941da0fe7f0131b8664bdfcba14b059fd704cab9fc8c47ac2` |
| 115 | `theorem` | [IsComplemented.inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscomplemented-inf.md) | 680 | `result-track:548f456536608637323c0b77906d99b879f098e0e2df0a4af5ac1b0014f04eb3` |
| 116 | `class` | [ComplementedLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/complementedlattice.md) | 688 | `declaration-track:39e9c9a16570dd228626dbaf50e991a3d89105f1726a9e349a5f987e88f5caac` |
| 117 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/instance-source-edition-2.md) | 699 | `declaration-track:4fed9a49d5b482c036718667ddeab400393810e2b599a7245374ca76035a78da` |
| 118 | `def` | [Complementeds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/complementeds.md) | 709 | `declaration-track:35b1d5c57b3155c08300a349d076f757e0096e97ed45817a8da76223923a69d3` |
| 119 | `instance` | [hasCoeT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/hascoet.md) | 718 | `declaration-track:9643b4cd7046dd1385f8359c1f408eb8279c4d3b33552a84ed4162a8a251930a` |
| 120 | `theorem` | [coe_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-injective.md) | 721 | `result-track:3b9bf243667cc6140ff7a9ac3462b99e570f2117fe6f44d430266b5feac0573a` |
| 121 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-inj.md) | 725 | `result-track:5e35d0b1529dc517de846045fbe5164ee883922e096ad4a520a4b9458e435e48` |
| 122 | `theorem` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-le-coe.md) | 730 | `result-track:fe4babd2ba98d436f22ac08b5aa186bdc1623396b1b1393bedd7a8beffcdf640` |
| 123 | `theorem` | [coe_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-lt-coe.md) | 735 | `result-track:11550565097ca263f6c8158f626e3e8eb152aafbc027b9b89edb44cf2d0510c1` |
| 124 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/instance.md) | 738 | `declaration-track:16408719f96f8f0dffa55dc995a13b1fdffa7d7cc6f445cd370ffa62462ff21b` |
| 125 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-bot.md) | 742 | `result-track:0c153c15f6f319f41f304924575ff6b8268d6ac731597c5b7f645dd8de4012e2` |
| 126 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-top.md) | 746 | `result-track:55b72fa39e6c7d6b6ab2d5d3ee1c71e8a0e7a478afbd57a52924ef246340f3ce` |
| 127 | `theorem` | [mk_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/mk-bot.md) | 750 | `result-track:e73c8941052c395fb9109bf2d7b23c74da36f1d1604cdadd2d67ae10268bda22` |
| 128 | `theorem` | [mk_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/mk-top.md) | 754 | `result-track:99d7a266f4ccd23e20e963f6fdecadfe09c8b0311ed7845e16d4717e8416c5f3` |
| 129 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/instance-source-edition-5.md) | 757 | `declaration-track:d73f5f171457bd4901e07d38bb2ed2de1c891d9cde9b61ddd8fe503ef13b14db` |
| 130 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/instance-source-edition-3.md) | 763 | `declaration-track:aee67ca8ac897f05bd5761af54d83a5533250f07028fc214fca5873f717cb12a` |
| 131 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/instance-source-edition-6.md) | 766 | `declaration-track:dc6d4b009b9ac4f2d942798477d8305fddc03c1784ac50cef4e6815acb9125f1` |
| 132 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-sup.md) | 770 | `result-track:b48993499e75656294b32f1cb389e1c2ec358d5d5fd557d615a957d64e46d17e` |
| 133 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/coe-inf.md) | 774 | `result-track:621cb95956ed20c3b5317e6e7f41b1c223a44718d3091711a843c6e1bd62050b` |
| 134 | `theorem` | [mk_sup_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/mk-sup-mk.md) | 778 | `result-track:c7cc3a16b60c3c7454cac22d390daadff10509ac00009129db6614c0a39c0148` |
| 135 | `theorem` | [mk_inf_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/mk-inf-mk.md) | 783 | `result-track:4f01b3684ee8e4e6868911360fdbcba1ef5ca1a6686d6349c68816783e77c65f` |
| 136 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/instance-source-edition-4.md) | 787 | `declaration-track:c458c28667b5e6f9c106120cc0effccebd42437c8ec43830fd0947c7b0e0bfac` |
| 137 | `theorem` | [disjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/disjoint-coe.md) | 791 | `result-track:da18af6ae35745585c1f1366ac2f0104f5005e4a6c8eb2c0932bd80297a0bd74` |
| 138 | `theorem` | [codisjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/codisjoint-coe.md) | 796 | `result-track:604ae30aa9889615a3bb46d4781c453dfc1e2227acaf926bd93b3aaf3a0916a6` |
| 139 | `theorem` | [isCompl_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/iscompl-coe.md) | 801 | `result-track:8c398b7689b6afc0c18de6a95f5f307ffde47a38f1b9f4b90c076095d86ddc08` |
| 140 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointNamespaced.lean/declarations/instance-source-edition-7.md) | 805 | `declaration-track:e97977715079473a31c906f18de7c0adad6960e51d5e4417de629499e42fe0f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa0be392ac5cd36e8c9e5fc9dfb323d9b605cd38a5b70af509880bfe992eb7b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante0e1583e22a89593e961200803991dfed667a3b2ab310e86f61c704df54a26f7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante0e1583e22a89593e961200803991dfed667a3b2ab310e86f61c704df54a26f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
