# Verification target: GRWTSK.Topology.AlgebraicTopology.ZerothHomotopy.Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14bbc2d95b911d16e811828ade1b3ed56d4a4949",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/index.md) · [Full source](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14bbc2d95b911d16e811828ade1b3ed56d4a4949`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean.json)

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
| 1 | `def` | [toSSetObj₁Equiv](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/tossetobj-equiv--9771b908cff1841d6ac99c69.md) | 42 | `declaration-track:9771b908cff1841d6ac99c69aed19a81ea58ecef0108f5eb27f360705044b97c` |
| 2 | `lemma` | [toSSetObj₁Equiv_apply_zero](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/tossetobj-equiv-apply-zero--a90711781c6ff80dfaa0308f.md) | 51 | `result-track:a90711781c6ff80dfaa0308f07d4819b15f5e23e524dd631c88aedc9b042fe4c` |
| 3 | `lemma` | [toSSetObj₁Equiv_apply_one](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/tossetobj-equiv-apply-one--796fa91a4b3fdb0f8ebeadf0.md) | 57 | `result-track:796fa91a4b3fdb0f8ebeadf09001442ce3ec2477371e134effdea114613d862f` |
| 4 | `lemma` | [δ_one_toSSetObj₁Equiv.symm](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/one-tossetobj-equiv-symm--ee1f513b0064998013a29f9f.md) | 63 | `result-track:ee1f513b0064998013a29f9f8f87e064065da29da243b9ca08599469a147ba3f` |
| 5 | `lemma` | [δ_zero_toSSetObj₁Equiv.symm](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/zero-tossetobj-equiv-symm--252d20bffea682272ae81ff7.md) | 69 | `result-track:252d20bffea682272ae81ff7dab60b0b356c5f1e051dbb4ea442600d9c7b20b2` |
| 6 | `def` | [toSSetObjEdgeEquiv](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/tossetobjedgeequiv--d5c4c810a52f59d2edf4f2a1.md) | 78 | `declaration-track:d5c4c810a52f59d2edf4f2a1276ec46ff33fe7e982df5f4c2d670bccf729fbb5` |
| 7 | `def` | [zerothHomotopyEquiv](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/zerothhomotopyequiv--f63471bd3db96ec6889bd237.md) | 87 | `declaration-track:f63471bd3db96ec6889bd2373780fdf4637b9dcac112850b96182ce59ad11d7b` |
| 8 | `lemma` | [zerothHomotopyEquiv_mk](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/zerothhomotopyequiv-mk--0fd0bc6bb5974d77ac31d709.md) | 99 | `result-track:0fd0bc6bb5974d77ac31d709c4ee9e5976d55022862074e124c2bd29a96d2a8b` |
| 9 | `lemma` | [zerothHomotopyEquiv_symm_mk](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/zerothhomotopyequiv-symm-mk--e0da6914bcc184d5c3093523.md) | 103 | `result-track:e0da6914bcc184d5c30935234dea95a5e20051d84dd8cb4db3202f6b21299fb6` |
| 10 | `instance` | [(anonymous)](../../../../../../Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/declarations/instance--eb8fdede7ea8d68601d3578b.md) | 106 | `declaration-track:eb8fdede7ea8d68601d3578b5c5d8b2eed07f91c92f1168ac961f7b2d5aa1081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af6a5983c89d629dd8de393b150fc9319c4c45410ae3307706758b136835388d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
