# Verification target: Directed Directed Of Sup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e93e97defe2bc1d9ec0b0abe3824432683e47a3",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant01e86f146ac96d2a05ecddec7c63f833f8fe36346b3535c89f56dc978121747b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e93e97defe2bc1d9ec0b0abe3824432683e47a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant01e86f146ac96d2a05ecddec7c63f833f8fe36346b3535c89f56dc978121747b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant01e86f146ac96d2a05ecddec7c63f833f8fe36346b3535c89f56dc978121747b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Max` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed.md) | 44 | `declaration-track:68331df747f9feb23bc6df9ff83ca35f21a2897f96062112b958fbd0601a78d3` |
| 2 | `def` | [DirectedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon.md) | 50 | `declaration-track:f1f083d6efbba3b36dc15d986b6a736802ef83810ba4e5a01e0ec7d39c45f8c9` |
| 3 | `theorem` | [directedOn_iff_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-iff-directed.md) | 56 | `result-track:dcfaab4bf4d2b9194cc7bce068ec495a2ad29dbfba7bbe650ea485aa8cbcdf5c` |
| 4 | `theorem` | [directedOn_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-range.md) | 63 | `result-track:0693ed83bf1e7a45222a8424dcc3d33fad558acbfcce995ee55822ee263307ff` |
| 5 | `theorem` | [directedOn_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-image.md) | 74 | `result-track:e208afa06f6dc7476c27a041f205e625f3a7abf1d91c7e143947b23f1a642708` |
| 6 | `theorem` | [DirectedOn.mono'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-mono-source-edition-2.md) | 80 | `result-track:a66b2ff8979a89c772f8027d8ac20eae855580188e2f647874bfe6812a273a98` |
| 7 | `theorem` | [DirectedOn.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-mono.md) | 86 | `result-track:72823cfe33ad50bf042f4121fdcfbcdc467f5ce64b212a64676071efd9a75fa7` |
| 8 | `theorem` | [directed_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-comp.md) | 91 | `result-track:28cc60ac902f8af7e73a47a768887ea3287e0fb3a9155c2e897d2356eed97cbb` |
| 9 | `theorem` | [Directed.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-mono.md) | 95 | `result-track:7da96920a24212093648df40e74d1c6f165563459927d817e23a503a29959eb4` |
| 10 | `theorem` | [Directed.mono_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-mono-comp.md) | 102 | `result-track:dac6c966841d4653ac22a39fb48c2abc078281452ce0fbb990e720f25bfa3988` |
| 11 | `theorem` | [directed_of_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-of-sup.md) | 108 | `result-track:f01d4afa1ac251f69d4f1db2bd4669cb5ab2e624ef5525b46d3008d16cd634a7` |
| 12 | `theorem` | [Monotone.directed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/monotone-directed-le.md) | 113 | `result-track:9328e2c99b835708b3161159c5705be3c0eb1d22e2f145c66dd782de96f897ef` |
| 13 | `theorem` | [Antitone.directed_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/antitone-directed-ge.md) | 118 | `result-track:122061d044b88a5aa41c6c5e0bc75a8b2adae3cdf61ca4be165516eac7271457` |
| 14 | `theorem` | [directedOn_of_sup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-of-sup-mem.md) | 124 | `result-track:bf51f2e8d8f58b04952a37d1ee4c1885394cc4c74ad7aa40777f10473f5d321f` |
| 15 | `theorem` | [Directed.extend_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-extend-bot.md) | 129 | `result-track:5fde1353e9eff3c332871666d7be5fb356564839ffdb472d5014f84edffd4747` |
| 16 | `theorem` | [directed_of_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-of-inf.md) | 145 | `result-track:835090fe2174f639f9c7c268cf3fa257be2c56ab463780fc8122718417eca72c` |
| 17 | `theorem` | [Monotone.directed_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/monotone-directed-ge.md) | 150 | `result-track:236d9312ff645580c504fdf2adb8000315fdb938e5db4260531130845ba73c6d` |
| 18 | `theorem` | [Antitone.directed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/antitone-directed-le.md) | 155 | `result-track:e36e8cec8141137bba1c5a877e9dc6fbd43eeb07f44c46840be87572d7a0c15c` |
| 19 | `theorem` | [directedOn_of_inf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-of-inf-mem.md) | 161 | `result-track:ed9d8427ddf2fc182e7184fe4de99edb6a68c973f67e971bc458db85e4acb51e` |
| 20 | `theorem` | [IsTotal.directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/istotal-directed.md) | 166 | `result-track:f456e349551805ce7620320371103f2dafe8ffc68ae299df1b2114b101173664` |
| 21 | `class` | [IsDirected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/isdirected.md) | 172 | `declaration-track:82d6eb8969d0b6dabfdd0760547e9e3973747d09682f1d65f65ae06820ada5b7` |
| 22 | `theorem` | [directed_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-of.md) | 178 | `result-track:9efbf43721f6789fb1805acd477dd7712949818202716a6d8353afb550b084c9` |
| 23 | `theorem` | [directed_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-id.md) | 182 | `result-track:064e4cda677641397ef78792ed9168f68d0f76ace14a528bfb293b07c06ab51f` |
| 24 | `theorem` | [directed_id_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directed-id-iff.md) | 185 | `result-track:7f8362e5d6869dade923079df01232f407bda86c208115584dd71efb06162f5e` |
| 25 | `theorem` | [directedOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-univ.md) | 189 | `result-track:7c40bfa5fda6d576fceb0d65b893f9074964aa325f72564fbadad24ed3ba9c1a` |
| 26 | `theorem` | [directedOn_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-univ-iff.md) | 194 | `result-track:7e238d592b2677a85d2759e095da7a5151ac34e3433ce055adf6201c2e95d5c7` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/instance-source-edition-3.md) | 203 | `declaration-track:851b9a3c8c6702a78b3beae1f37450efe799fef4283697041210b531c7d3b596` |
| 28 | `theorem` | [isDirected_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/isdirected-mono.md) | 207 | `result-track:4b36558fe0970e0b5738632516cd64d2265de76af56b771d10774bbdc8f5c4e7` |
| 29 | `theorem` | [exists_ge_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/exists-ge-ge.md) | 213 | `result-track:d518b14d9b8d425a5d0ecc1a79abe623489e1eaeb0a7df3a6598b5699f163f7c` |
| 30 | `theorem` | [exists_le_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/exists-le-le.md) | 217 | `result-track:2697e8fa4c3aa592029e9920edc220e69611d805af409a29c9ec880e67d449ad` |
| 31 | `instance` | [OrderDual.isDirected_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/orderdual-isdirected-ge.md) | 221 | `declaration-track:f66598b492986dc510da12784d0fa55abc5fa180c5f21726301b5e9bae801518` |
| 32 | `instance` | [OrderDual.isDirected_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/orderdual-isdirected-le.md) | 225 | `declaration-track:4eb99c7f2e46635930c9730ddc2e2308e63a11fbe021ba18819b3a1111de361c` |
| 33 | `theorem` | [DirectedOn.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-insert.md) | 231 | `result-track:f212399f155fdd8cc2176e4b4f7c230a9659f3b0afa41ff900567f1079da4a32` |
| 34 | `theorem` | [directedOn_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-singleton.md) | 243 | `result-track:be6288abfc36dd0346b928e6640cd0a5b50d96f22175db3de8e4200d184cceb2` |
| 35 | `theorem` | [directedOn_pair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-pair-source-edition-2.md) | 247 | `result-track:0b2446c119a983dd3d2b92abca8922f1a80dfcc99586b844c1d1cb36edc3e6ab` |
| 36 | `theorem` | [directedOn_pair'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-pair.md) | 251 | `result-track:0ac646e5aab9251ce40e38484cd86cfb83bc9f08a2b7a6fccf9765e243453270` |
| 37 | `theorem` | [IsMin.isBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/ismin-isbot.md) | 263 | `result-track:93b98bdf003fdcc13fcf668ae13a765417d744a58ef8db41b55074b45fb57ca6` |
| 38 | `theorem` | [IsMax.isTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/ismax-istop.md) | 268 | `result-track:10c2936b5925a27d6fa358b1630b7182fb2c55be9bb75e7d51864725ee209b19` |
| 39 | `lemma` | [DirectedOn.is_bot_of_is_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-is-bot-of-is-min.md) | 272 | `result-track:7db6c2857de4ef446f7346e6299e42d2c87919f7dd2e1fc623dbf44bc9fd6e6e` |
| 40 | `lemma` | [DirectedOn.is_top_of_is_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/directedon-is-top-of-is-max.md) | 278 | `result-track:86ba5b663d5a1a928511380978f37b4d40c549988392790ebd653b7d401074ba` |
| 41 | `theorem` | [isTop_or_exists_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/istop-or-exists-gt.md) | 283 | `result-track:faecc2a0b452e14a327b53fed0c2c6f8c02e94fdc15ab3f13f14f2b6d1b8c080` |
| 42 | `theorem` | [isBot_or_exists_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/isbot-or-exists-lt.md) | 287 | `result-track:d51ddabdc05d6b1e825dc3fae6c597408b829f29bb874852b0095a39757c2a7a` |
| 43 | `theorem` | [isBot_iff_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/isbot-iff-ismin.md) | 291 | `result-track:e5d97f4f5af3a1d439cb0237dedd56e6a6dc9bed23f726e1afdd7dd5bd0f4618` |
| 44 | `theorem` | [isTop_iff_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/istop-iff-ismax.md) | 295 | `result-track:b832223bfcdcfe70c828ac793b7e5c5830891d2ff98ba3a9e38755f19a99abb4` |
| 45 | `theorem` | [exists_lt_of_directed_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/exists-lt-of-directed-ge.md) | 301 | `result-track:6f2136558a448bbd261b65985c4f9c1307ba86a92767e30ecac01d67450e2dee` |
| 46 | `theorem` | [exists_lt_of_directed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/exists-lt-of-directed-le.md) | 307 | `result-track:d91c419dace8d4f915ac6ca43ea0e3da60d40374125731c89793e5bbd15b2a74` |
| 47 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/instance-source-edition-5.md) | 315 | `declaration-track:fbccfceb441a5cf7b32ade339fe68d0632e7d41001834a52d0e91a12bd256f37` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/instance-source-edition-4.md) | 321 | `declaration-track:e055cd21b68dcb215d0516f482375b429f23372155b86ee9e75dc23c0341cc27` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/instance-source-edition-2.md) | 327 | `declaration-track:60f9c1ad1962e6cec6c376a1f553dfe687b4051d36bd32c86ec1ae14033b48b7` |
| 50 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/instance.md) | 332 | `declaration-track:0d12b7bc78af6b170df1085bc49b80e5169d21547be28b47324c99c129bd2b1b` |
| 51 | `def` | [ScottContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/scottcontinuous.md) | 352 | `declaration-track:e336afb7346061632f3245ece9c120fac9cb6c1de9498b58ed9702affeac282b` |
| 52 | `theorem` | [ScottContinuous.monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedDirectedOfSup.lean/declarations/scottcontinuous-monotone.md) | 356 | `result-track:6aa42929ee40b71813d7527f9417c74809612bc950ecfc2ca21f1af7d78f02dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f5fb04b0bb1bb7cd1a62a93dcecadf65d73826c90f472564b83d781bb42b5c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant01e86f146ac96d2a05ecddec7c63f833f8fe36346b3535c89f56dc978121747b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant01e86f146ac96d2a05ecddec7c63f833f8fe36346b3535c89f56dc978121747b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
