# Verification target: GRWTSK.Topology.GeneralTopology.SeparatedNhds.Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37b8c1e46dbcf3ae72c37ccb3a3750d47563086c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37b8c1e46dbcf3ae72c37ccb3a3750d47563086c`.

Source path: `GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SeparatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/separatednhds--14c78719d1400c5748863adc.md) | 46 | `declaration-track:14c78719d1400c5748863adce3900c71166b3b42c0f42bdeb700a5589b5c2fa5` |
| 2 | `theorem` | [separatedNhds_iff_disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/separatednhds-iff-disjoint--0313d170f10ae92be1c045ab.md) | 49 | `result-track:0313d170f10ae92be1c045ab201cbd1d889f46b3fce35eb75bbf5e6c9699c007` |
| 3 | `def` | [HasSeparatingCover](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/hasseparatingcover--da744d7625741c151330bf28.md) | 56 | `declaration-track:da744d7625741c151330bf28002c51c42a45e75a313574e5ccda394465ece10c` |
| 4 | `theorem` | [hasSeparatingCovers_iff_separatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/hasseparatingcovers-iff-separatednhds--c6f6580ffe2c3447a8c52ca4.md) | 61 | `result-track:c6f6580ffe2c3447a8c52ca45c34c4e3f05e3e60adebe7b96982f02f6ceae8c2` |
| 5 | `theorem` | [Set.hasSeparatingCover_empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/set-hasseparatingcover-empty-left--4bb9c48d6042900d17b7cde1.md) | 104 | `result-track:4bb9c48d6042900d17b7cde14090ac6d1b7a05bad97120932e8e2a31d53338f6` |
| 6 | `theorem` | [Set.hasSeparatingCover_empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/set-hasseparatingcover-empty-right--cdbd542563d2407d1c9cf129.md) | 108 | `result-track:cdbd542563d2407d1c9cf129c83fbffaf5f7827b514bbe089a1c12f506b27241` |
| 7 | `theorem` | [HasSeparatingCover.mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/hasseparatingcover-mono--46addddddfccf9511109a68d.md) | 112 | `result-track:46addddddfccf9511109a68dd627d08f9e768b5f2ae141ccd12469a659851fd7` |
| 8 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/symm--f053030d1fdcd2ae3dbdd44b.md) | 127 | `result-track:f053030d1fdcd2ae3dbdd44b5e5290881cc2ec706db556d5fbc35cc273b6633d` |
| 9 | `theorem` | [comm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/comm--0b130ba29bb4a4ed3f2c89f7.md) | 130 | `result-track:0b130ba29bb4a4ed3f2c89f79dac5545666de2ca6a588f6aa01e0269cd1f111a` |
| 10 | `theorem` | [preimage](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/preimage--f1fc61caa272d6e4963e0039.md) | 133 | `result-track:f1fc61caa272d6e4963e003951c6a553c0fa5cd991a5a09ec366c9a35e493ecc` |
| 11 | `theorem` | [disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/disjoint--dcf043b56e9bd7122f40a379.md) | 139 | `result-track:dcf043b56e9bd7122f40a379ff1318a8a81b7af4a817c8431aaf16ed289061c0` |
| 12 | `theorem` | [disjoint_closure_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/disjoint-closure-left--d7fff10892d548923bef4c47.md) | 142 | `result-track:d7fff10892d548923bef4c47bc0146def8798a9f327acdfa567f31dfe455d591` |
| 13 | `theorem` | [disjoint_closure_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/disjoint-closure-right--9ba8b904555a26267973a3e7.md) | 146 | `result-track:9ba8b904555a26267973a3e7a78ea1ea6a4c0bf9ab6ae59e16f35e0aef7f100a` |
| 14 | `theorem` | [empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/empty-right--33f3b8c97314dd46a9e8722a.md) | 149 | `result-track:33f3b8c97314dd46a9e8722abb82b8c212ac06d311065d1ea0ef3c3785128d44` |
| 15 | `theorem` | [empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/empty-left--47b3a147a372b8089e582b42.md) | 152 | `result-track:47b3a147a372b8089e582b42b22360a1805e366c882489292bf1873622191e56` |
| 16 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/mono--e85c0f47137525f49fed6955.md) | 155 | `result-track:e85c0f47137525f49fed69551afce2daa10b6d393ef1573d8f95f215b06cf34a` |
| 17 | `theorem` | [union_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/union-left--82f5f44a1ba0beec5521098f.md) | 159 | `result-track:82f5f44a1ba0beec5521098f3c36018f2444ea7a958e817d816d0b00452450d3` |
| 18 | `theorem` | [union_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/union-right--3e571aa158dd4d49c9fdba2f.md) | 162 | `result-track:3e571aa158dd4d49c9fdba2f9f7ca8b28282bdf07a0708ff7ec65e91518ce68f` |
| 19 | `lemma` | [isOpen_left_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/isopen-left-of-isopen-union--4876edd2f05f16dfce05f3a3.md) | 165 | `result-track:4876edd2f05f16dfce05f3a328695e00386c30e567c0598685cafcd8f20968ce` |
| 20 | `lemma` | [isOpen_right_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/isopen-right-of-isopen-union--6f26a43d7a16a9ca3d8bbabf.md) | 171 | `result-track:6f26a43d7a16a9ca3d8bbabf6b25f09328d625088c0306c62e86abbc8da1a519` |
| 21 | `lemma` | [isOpen_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/isopen-union-iff--dd8b2831d16e315db511f5fd.md) | 174 | `result-track:dd8b2831d16e315db511f5fd2fb9c16e9c9855e6501b141cf0b876054fbef4b1` |
| 22 | `lemma` | [isClosed_left_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/isclosed-left-of-isclosed-union--4cb7c73222985ffb1e2f56dd.md) | 178 | `result-track:4cb7c73222985ffb1e2f56dd97286da3d2af61b4efec93290cbef9f86896cdb8` |
| 23 | `lemma` | [isClosed_right_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/isclosed-right-of-isclosed-union--57afe99b80f46b4e61a09643.md) | 187 | `result-track:57afe99b80f46b4e61a09643ae400148fe3f4cd79ef0e31af3f3e92f5c62144c` |
| 24 | `lemma` | [isClosed_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/declarations/isclosed-union-iff--f1d9890cb65797e483511ca6.md) | 191 | `result-track:f1d9890cb65797e483511ca61fcf0b3cc5eb7385b95caf3cd94ac4b20ff880ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
