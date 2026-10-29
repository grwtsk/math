# Verification target: Height Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e91d9826e1c6a06557f242ca2bca1374a91406",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e91d9826e1c6a06557f242ca2bca1374a91406`.

Source path: `GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subchain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/subchain.md) | 68 | `declaration-track:bbbea75993e661883f2b19b14af2edd04794683804c52c9578a292425609b639` |
| 2 | `theorem` | [nil_mem_subchain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/nil-mem-subchain.md) | 73 | `result-track:f665b2952cbbc2835705711548de736c7823b2b1391a7720034abb9268409406` |
| 3 | `theorem` | [cons_mem_subchain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/cons-mem-subchain-iff.md) | 78 | `result-track:b69c6dd02af5df74aa3b3fb8218076ef046a376940f70d300d9856001e2a9c0c` |
| 4 | `theorem` | [singleton_mem_subchain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/singleton-mem-subchain-iff.md) | 85 | `result-track:94a40b9f6dbb4ca1d3d7f2ca4050c30c089d0c9925c976fc73d7cd2abd44639a` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/instance.md) | 87 | `declaration-track:10ebcd7656618736746dbdce3b688e87399a78dab8fb5325f8c9b00c7c14ecc6` |
| 6 | `def` | [chainHeight](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight.md) | 93 | `declaration-track:bae6177096d69101fb9f5e4e583e29aab8425900f055e78c0e11c233d6d89547` |
| 7 | `theorem` | [chainHeight_eq_iSup_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-eq-isup-subtype.md) | 97 | `result-track:7f95163a2fa23c01edf36feb42cbecbdf7924b5d98d31cecd657af6d06127728` |
| 8 | `theorem` | [exists_chain_of_le_chainHeight](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/exists-chain-of-le-chainheight.md) | 101 | `result-track:17a3ff52d196fa336a200fb44626e0de55be1cf3f804cef506f34ebe5ee1308c` |
| 9 | `theorem` | [le_chainHeight_TFAE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/le-chainheight-tfae.md) | 117 | `result-track:d94b874127211f27c76674f853f258aa1e7c8b86307cb1d8e9d87c09660a83de` |
| 10 | `theorem` | [le_chainHeight_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/le-chainheight-iff.md) | 127 | `result-track:93f359fa939c9c79b3b193558020bde442a1e587bb9ef6e8ba5154e4451a770b` |
| 11 | `theorem` | [length_le_chainHeight_of_mem_subchain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/length-le-chainheight-of-mem-subchain.md) | 131 | `result-track:dedccbf5b7900618a8e7d7483fa45caaa7dbc5b27e1843d2cb7e72097b7f17c0` |
| 12 | `theorem` | [chainHeight_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-eq-top-iff.md) | 135 | `result-track:2f8b78d16d085acc0979b16304e16ed4ed91407db485281ef29de939fb65e51b` |
| 13 | `theorem` | [one_le_chainHeight_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/one-le-chainheight-iff.md) | 143 | `result-track:38e08a320267bc7ced15cb4f5ff182b9950dd993040f44542b822bd72e4397a9` |
| 14 | `theorem` | [chainHeight_eq_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-eq-zero-iff.md) | 150 | `result-track:56948d852762b4d9fbbc4ba20ec78d13748a5d53d44ef2573c15d4641ae7eac1` |
| 15 | `theorem` | [chainHeight_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-empty.md) | 156 | `result-track:79710990f72ce1ce0c04182622169ba4d259f31813b047e5dbdc4377e866f83e` |
| 16 | `theorem` | [chainHeight_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-of-isempty.md) | 161 | `result-track:fe62a21935c9ff4899e69a0ca24bd6d78e25fbc1f9c761fcc9211567ffb2d940` |
| 17 | `theorem` | [le_chainHeight_add_nat_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/le-chainheight-add-nat-iff.md) | 165 | `result-track:1d19f8c604804286324e5c102ddc893199139a20ee9c7763d089043e48814549` |
| 18 | `theorem` | [chainHeight_add_le_chainHeight_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-add-le-chainheight-add.md) | 170 | `result-track:6827258186c4fc0ccfab9537a929aa72294911f4b1ca32d0b905b4fbe26c7135` |
| 19 | `theorem` | [chainHeight_le_chainHeight_TFAE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-le-chainheight-tfae.md) | 195 | `result-track:6ce4817c700e5ef15ee26b8866e63a24e11ad18bdd62780bb4dcb76bbe389306` |
| 20 | `theorem` | [chainHeight_le_chainHeight_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-le-chainheight-iff.md) | 206 | `result-track:baa2a86ca72ae7773cc8a7e9d77322af53e3d7c1c7c5432c7006e8ccd44f987e` |
| 21 | `theorem` | [chainHeight_le_chainHeight_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-le-chainheight-iff-le.md) | 211 | `result-track:5d3f22af4bd9a6c6b642581995a3989cc7c9055e562ffb67855452f6db4da48b` |
| 22 | `theorem` | [chainHeight_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-mono.md) | 216 | `result-track:f3c7c7c9a3ce173845aa66cc7f828aa61475005148dac0d6f8ca0dfeabd127b5` |
| 23 | `theorem` | [chainHeight_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-image.md) | 220 | `result-track:7638a0a52acee9cf87a24b4eeacbcbc80c9a39bc3d8b8487474b1b66fb1dd5d6` |
| 24 | `theorem` | [chainHeight_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-dual.md) | 251 | `result-track:66272610eed8e94aff04bba45cdd81dc2e5b25449efb107acf59872a05dd5e68` |
| 25 | `theorem` | [chainHeight_eq_iSup_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-eq-isup-ici.md) | 265 | `result-track:b98092b67789e79728e4d86282ee118d620d01ce3922754b989dbad3acb6bb31` |
| 26 | `theorem` | [chainHeight_eq_iSup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-eq-isup-iic.md) | 281 | `result-track:f7121f5bab5c402653dd4c413993d91223949cbadde5030479da010e73918104` |
| 27 | `theorem` | [chainHeight_insert_of_forall_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-insert-of-forall-gt.md) | 289 | `result-track:2aa6bbcd3c4a768ffe5cce32d3776a50be7f9e0c4c9a09cc002f68ab80551ce1` |
| 28 | `theorem` | [chainHeight_insert_of_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-insert-of-forall-lt.md) | 317 | `result-track:2f3ce09996aa6ca6885116387a6e00da471eeb17362702855df9fe287cc0191d` |
| 29 | `theorem` | [chainHeight_union_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-union-le.md) | 323 | `result-track:358ec535cf34b1dc84fa78b193a3a0a2161adfc91ad0252986c4ced046b4926e` |
| 30 | `theorem` | [chainHeight_union_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/chainheight-union-eq.md) | 340 | `result-track:be9dd257d4e9d9db7df1eed2e00b40045fd04fca05b5718a3d17ec01153ab9bb` |
| 31 | `theorem` | [wellFoundedGT_of_chainHeight_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/wellfoundedgt-of-chainheight-ne-top.md) | 359 | `result-track:b8f85959e49bf05afcee170db08a77ccd63db13ea40417e4c10420c04b497bff` |
| 32 | `theorem` | [wellFoundedLT_of_chainHeight_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightNamespacedAligned.lean/declarations/wellfoundedlt-of-chainheight-ne-top.md) | 380 | `result-track:937c24cd4544657a717ecfe40508a6ae8dc8885a8779ce22bac569e3ccaf280f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4eb6a187d913b2daf8d45ce3e87d69aaf25c859d11adbb7058c45eefaf940c85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
