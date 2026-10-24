# Verification target: GRWTSK.Topology.GeneralTopology.ReImTopology.Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2278b638cf18abffb671500a222ff53e4168eba",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2278b638cf18abffb671500a222ff53e4168eba`.

Source path: `GRWTSK/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.IsHomeomorphicTrivialBundle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isHomeomorphicTrivialFiberBundle_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/ishomeomorphictrivialfiberbundle-re--693d7e2648561f356f2f0ff8.md) | 44 | `result-track:693d7e2648561f356f2f0ff88b7ed31479b5f8e6debdbd55b754f03589b57518` |
| 2 | `theorem` | [isHomeomorphicTrivialFiberBundle_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/ishomeomorphictrivialfiberbundle-im--33542f9dd7d240f275e7192b.md) | 49 | `result-track:33542f9dd7d240f275e7192bd178ab9a32b4432fe605ef02dcd958eb8f4c49c5` |
| 3 | `theorem` | [isOpenMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/isopenmap-re--cc1212ca14bebba430866a8b.md) | 53 | `result-track:cc1212ca14bebba430866a8b0aade8764754300d762981ecf96183ad1b88e2d1` |
| 4 | `theorem` | [isOpenMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/isopenmap-im--aa06f13e8abf2becce89d409.md) | 57 | `result-track:aa06f13e8abf2becce89d409f49554d8e759a441a79331f77e1506f0fb636ce6` |
| 5 | `theorem` | [quotientMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/quotientmap-re--6d0e7d2ddd6cf1dec57f6749.md) | 61 | `result-track:6d0e7d2ddd6cf1dec57f6749ed5c0d7ab71368d15ccaa834526aff043929895e` |
| 6 | `theorem` | [quotientMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/quotientmap-im--07a2b10b69e1bfd6817e3059.md) | 65 | `result-track:07a2b10b69e1bfd6817e30590065fb295e998ab1af97650c11626744cfc0fbaa` |
| 7 | `theorem` | [interior_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/interior-preimage-re--a92b575ffb7b0ce08e716c83.md) | 69 | `result-track:a92b575ffb7b0ce08e716c8337ba2fa36287058c0c013ce8ac1a5455b6857cb1` |
| 8 | `theorem` | [interior_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/interior-preimage-im--d2ec3f2c35f92de6837dbf28.md) | 73 | `result-track:d2ec3f2c35f92de6837dbf28c4f8bdbc771040b1ae71b01154369215429c0adb` |
| 9 | `theorem` | [closure_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/closure-preimage-re--ea6fb44c430d6fc7dbaef33d.md) | 77 | `result-track:ea6fb44c430d6fc7dbaef33d7e6f9b8f023fea981998bb5ad93300f9efcfe2c2` |
| 10 | `theorem` | [closure_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/closure-preimage-im--9f6f1dab76f4fa8d3fa56b28.md) | 81 | `result-track:9f6f1dab76f4fa8d3fa56b28b8c753dae0991b4a768f0db47fadfa29c12a8d1f` |
| 11 | `theorem` | [frontier_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-preimage-re--e92886ba825f6fa37a0dda4a.md) | 85 | `result-track:e92886ba825f6fa37a0dda4a53e5f1c86fed526ebf1ff044cd147ea5783e9470` |
| 12 | `theorem` | [frontier_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-preimage-im--b46327e1e574c181d59fee0c.md) | 89 | `result-track:b46327e1e574c181d59fee0cf78ccda8782a916c00dfe6bd9ef3156010508097` |
| 13 | `theorem` | [interior_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/interior-setof-re-le--5d40168c65d662bf3f43d1c0.md) | 94 | `result-track:5d40168c65d662bf3f43d1c008dadcc7e0b6790e02558f0fe8b9e10b81b41f42` |
| 14 | `theorem` | [interior_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/interior-setof-im-le--3e58ab5c6f45e736d8e8195b.md) | 99 | `result-track:3e58ab5c6f45e736d8e8195b4729db571a42d54d8b8f8961e7fec93c7561983e` |
| 15 | `theorem` | [interior_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/interior-setof-le-re--b95c1f53ef7f06eb41a292a6.md) | 104 | `result-track:b95c1f53ef7f06eb41a292a6197cef229284ffb5fb81ee1bc8bf35262e279ef3` |
| 16 | `theorem` | [interior_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/interior-setof-le-im--f2a38e447127fa5f611b5777.md) | 109 | `result-track:f2a38e447127fa5f611b5777d399db7d3319633ca61b6866ab94344a91f668b1` |
| 17 | `theorem` | [closure_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/closure-setof-re-lt--e1753c511c2d31dba8ac59d7.md) | 114 | `result-track:e1753c511c2d31dba8ac59d78de08c301d9c32ff389c61063c36ad79610017e7` |
| 18 | `theorem` | [closure_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/closure-setof-im-lt--517e3cc4ee4b1c585a289411.md) | 119 | `result-track:517e3cc4ee4b1c585a289411297a0252837e3de8ab9df61590745e3071925c26` |
| 19 | `theorem` | [closure_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/closure-setof-lt-re--af14f7f40492e0289d1993a8.md) | 124 | `result-track:af14f7f40492e0289d1993a8e7ed94544f9679077fe36e0bd1f5f87cb72a44c6` |
| 20 | `theorem` | [closure_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/closure-setof-lt-im--e971bd3389f30b640b1d1382.md) | 129 | `result-track:e971bd3389f30b640b1d1382847d57f1a5711c9518c1416c52d44dff6a6f55d7` |
| 21 | `theorem` | [frontier_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-re-le--9b9bb9a81905cb5be46aaeef.md) | 134 | `result-track:9b9bb9a81905cb5be46aaeef07180f4b5dcc5740c685abecc0c49753bbb01a15` |
| 22 | `theorem` | [frontier_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-im-le--82bb93a8b4bbe5038e95d601.md) | 139 | `result-track:82bb93a8b4bbe5038e95d601af0a595ea65fc9ab613e1b4286bbe4314bc3d5bb` |
| 23 | `theorem` | [frontier_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-le-re--a520239ae48cd4b6a52d892b.md) | 144 | `result-track:a520239ae48cd4b6a52d892b9e75386e4260421f89405854443730c4deb53917` |
| 24 | `theorem` | [frontier_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-le-im--aa08c544f3af8273d5fd8011.md) | 149 | `result-track:aa08c544f3af8273d5fd801182cf94628579c233159673e9b1a68b1514061601` |
| 25 | `theorem` | [frontier_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-re-lt--df3b0a651c3e058c1fd6b3e5.md) | 154 | `result-track:df3b0a651c3e058c1fd6b3e52a603c9b48023c4442fcc9e738dec9ad878773f4` |
| 26 | `theorem` | [frontier_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-im-lt--2c87416112fb522ba1dcdbbf.md) | 159 | `result-track:2c87416112fb522ba1dcdbbff1dea89faa4c54aec1156f45ed2bdfda25a79ad6` |
| 27 | `theorem` | [frontier_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-lt-re--e0926e667274a2d1a38bc240.md) | 164 | `result-track:e0926e667274a2d1a38bc240d272ba323a0ef239484152e0301f7ba985f03ec7` |
| 28 | `theorem` | [frontier_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-lt-im--270b3fde7116309f6bd0d421.md) | 169 | `result-track:270b3fde7116309f6bd0d421a1a79de4d8fa428233188786dc2534d1f425bed3` |
| 29 | `theorem` | [closure_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/closure-reprodim--5dfa33e02fbb826b7c561821.md) | 173 | `result-track:5dfa33e02fbb826b7c5618212c7ae6446165e7091b343fb90c2b1321ccc98d88` |
| 30 | `theorem` | [interior_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/interior-reprodim--aa9dfb15a1deb0b2b59cd42f.md) | 178 | `result-track:aa9dfb15a1deb0b2b59cd42f10402bd4b3dff853b1234dcf8288f05128e2f297` |
| 31 | `theorem` | [frontier_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-reprodim--1de4ed87ff759138de0b5e27.md) | 182 | `result-track:1de4ed87ff759138de0b5e274ec594e65ea46818341ee617695681e872a16b11` |
| 32 | `theorem` | [frontier_setOf_le_re_and_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-le-re-and-le-im--c0a71e338ee112f24d8f1e6c.md) | 188 | `result-track:c0a71e338ee112f24d8f1e6cc475112e690a34fe37d45a49e328fba702bdfd34` |
| 33 | `theorem` | [frontier_setOf_le_re_and_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/frontier-setof-le-re-and-im-le--74ac733c62410dfeb12e5969.md) | 193 | `result-track:74ac733c62410dfeb12e5969344117165989cac6b71416527458dab76faf0028` |
| 34 | `theorem` | [IsOpen.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/isopen-reprodim--6a02aa158ba750b777afb90f.md) | 205 | `result-track:6a02aa158ba750b777afb90fab0b9510579518fd5569085e968c08d447a65622` |
| 35 | `theorem` | [IsClosed.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/isclosed-reprodim--3efa7d97de4e6866634715fc.md) | 209 | `result-track:3efa7d97de4e6866634715fc1967b1bdf06488077a1a5d33567038a2e1416c04` |
| 36 | `theorem` | [Metric.Bounded.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/declarations/metric-bounded-reprodim--9a7e50942f0d8aca62fb5ccf.md) | 213 | `result-track:9a7e50942f0d8aca62fb5ccf422b635b359fba6dbed70dca1e1986a84ae6a38c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
