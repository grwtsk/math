# Verification target: GRWTSK.Combinatorics.Sequences.DisjointTranspositions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81deca9ed7b0dadc7f4f0e9ac610df537fee3071",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DisjointTranspositions.lean/index.md) · [Full source](../../../../Combinatorics/DisjointTranspositions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81deca9ed7b0dadc7f4f0e9ac610df537fee3071`.

Source path: `GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/DisjointTranspositions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.FinRange` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Dist` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositionSwap](../../../../Combinatorics/DisjointTranspositions.lean/declarations/positionswap.md) | 18 | `declaration-track:574e9f20ad603d53573edb73cda05f80f7297b09348c18f9a6f4d7d82f55a547` |
| 2 | `def` | [permutation](../../../../Combinatorics/DisjointTranspositions.lean/declarations/permutation.md) | 25 | `declaration-track:36f25c6eba705c3b6729203f005c7af399ddd6785997cffef8a893dd4594fff5` |
| 3 | `def` | [support](../../../../Combinatorics/DisjointTranspositions.lean/declarations/support.md) | 28 | `declaration-track:245c716035c8566a8146fbad4e1e87b23eca3614b992af6f1ec7fabdd5945b46` |
| 4 | `def` | [Bounded](../../../../Combinatorics/DisjointTranspositions.lean/declarations/bounded.md) | 30 | `declaration-track:af12dca9b119a5ce13ee63b485e6b4474892dea33b26f36d274f25377242f34e` |
| 5 | `instance` | [(anonymous)](../../../../Combinatorics/DisjointTranspositions.lean/declarations/instance-source-edition-3.md) | 33 | `declaration-track:a70c3b3ae6fec9635c11fb590ebc392058bdb840f0e0a2942b0f9936316c7a4f` |
| 6 | `theorem` | [fixes](../../../../Combinatorics/DisjointTranspositions.lean/declarations/fixes.md) | 36 | `result-track:6d68e51e01091f4b183f1da9ec6ca7ac974859562b230d3ebccd5d09e0c67aaa` |
| 7 | `theorem` | [displacement](../../../../Combinatorics/DisjointTranspositions.lean/declarations/displacement.md) | 41 | `result-track:6da19fb1f469e26751f02ec37e0d8423d4fab1fc6a13d16006de2ef3c3cfc539` |
| 8 | `theorem` | [commute](../../../../Combinatorics/DisjointTranspositions.lean/declarations/commute.md) | 53 | `result-track:dccffc0fa926438fa98ae6b0cddce60ffc99febd2461d8c0908152b034b3d360` |
| 9 | `abbrev` | [SwapTrace](../../../../Combinatorics/DisjointTranspositions.lean/declarations/swaptrace.md) | 78 | `declaration-track:341c31208a5b42cfc908615282f012f623a2781f3260581862064585c3d56ae5` |
| 10 | `def` | [traceSupport](../../../../Combinatorics/DisjointTranspositions.lean/declarations/tracesupport.md) | 80 | `declaration-track:7a8751c6522a3e4968aa3fadd81b07dbf501ace50e921d2aa11baf87333ed095` |
| 11 | `def` | [SupportsDisjoint](../../../../Combinatorics/DisjointTranspositions.lean/declarations/supportsdisjoint.md) | 83 | `declaration-track:cf2a88156e9efe3f76fc41a56c4c305364ee974c008a07a7a4545bb76b59be12` |
| 12 | `def` | [TraceBounded](../../../../Combinatorics/DisjointTranspositions.lean/declarations/tracebounded.md) | 85 | `declaration-track:5348d6a03771576a3a81bb60994cac97b3637897719d76d309f8a2a9f58d5108` |
| 13 | `instance` | [(anonymous)](../../../../Combinatorics/DisjointTranspositions.lean/declarations/instance-source-edition-2.md) | 88 | `declaration-track:40df447c234c05a768641bba484be6bc85faec3df2e9eaa135ab59a9fe61e775` |
| 14 | `instance` | [(anonymous)](../../../../Combinatorics/DisjointTranspositions.lean/declarations/instance.md) | 91 | `declaration-track:2b3a2fa5a6fe3aa92300bfe2329c014af3af714cade3b4e5d5c00f2d88a8fe8b` |
| 15 | `def` | [replayPermutation](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation.md) | 94 | `declaration-track:4ed1f577e1601511407b92232174f5f4f583dcd49e6449a6b63c747ea0dee91e` |
| 16 | `theorem` | [replayPermutation_nil](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation-nil.md) | 97 | `result-track:d3d830d9cc1ac2b08a47d3f715d3fcc7232d7fc0ae74bae5789cfa5a0f4b7a04` |
| 17 | `theorem` | [replayPermutation_cons](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation-cons.md) | 99 | `result-track:e7348e2024f18d947fc8afb778715965ed76c715db71b88757bb217a9c5d6f09` |
| 18 | `theorem` | [replayPermutation_append](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation-append.md) | 102 | `result-track:ae45ebd39059ee9f38518e2d2d287115ad7a8b1723d83aef2ec367039e7d0247` |
| 19 | `theorem` | [replayPermutation_fixes](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation-fixes.md) | 106 | `result-track:02a2f62faef063f5d1a4972f04a15fd42c9b4b927fc9da3cdc3f9bc0d6835352` |
| 20 | `theorem` | [replayPermutation_mem_support](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation-mem-support.md) | 115 | `result-track:14a6f126f69c2947fb7b53d6c24a34d248a928eb77e9d88373c2235e89b32bfa` |
| 21 | `theorem` | [replayPermutation_displacement](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation-displacement.md) | 122 | `result-track:f8458021196635d51b90b8272dc8e55e447d26df44b956c2f69ff987014d9578` |
| 22 | `theorem` | [replayPermutation_order_independent](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaypermutation-order-independent.md) | 143 | `result-track:165cb876990743040edfcbb7bf84b35a3a1a531a4453b2162155ac2f2dedbb9c` |
| 23 | `def` | [permuteList](../../../../Combinatorics/DisjointTranspositions.lean/declarations/permutelist.md) | 152 | `declaration-track:c32194ec7851874b6eef744c25300dab63d6a99cadd23ad63a01894bd3145fef` |
| 24 | `theorem` | [permuteList_perm](../../../../Combinatorics/DisjointTranspositions.lean/declarations/permutelist-perm.md) | 155 | `result-track:f2212bfc609abc978edfac3251daae37bb08827e7eaf37a8a6f66ecca0a6704b` |
| 25 | `theorem` | [permuteList_length](../../../../Combinatorics/DisjointTranspositions.lean/declarations/permutelist-length.md) | 159 | `result-track:3a65be3062aa619cceee2e50005cfd50c96a79de74f957e5354f8d90c5c7a310` |
| 26 | `def` | [replayList](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaylist.md) | 163 | `declaration-track:ca7b27dda8cf2c6ff32d7b0c9e3bc9ff2b0c1530979c01ba38778eb3888b5e4d` |
| 27 | `theorem` | [replayList_perm](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaylist-perm.md) | 166 | `result-track:bbb471ac69196b2c3e8f63b8b521ea6682887e504c050ad1f1dc46f4b46034e1` |
| 28 | `theorem` | [transposition_preserves_multiset](../../../../Combinatorics/DisjointTranspositions.lean/declarations/transposition-preserves-multiset.md) | 169 | `result-track:83033bdd4b1b2f6002310eb4cd8f4deeaa1e4e10519cf582a5c6968a34a1b884` |
| 29 | `theorem` | [replayList_sum](../../../../Combinatorics/DisjointTranspositions.lean/declarations/replaylist-sum.md) | 173 | `result-track:c9ebe03d8f00f7cb89eaf9ea46644b7a3cc1e632691c9c0274b7e205c648313e` |
| 30 | `theorem` | [intersecting_supports_do_not_commute](../../../../Combinatorics/DisjointTranspositions.lean/declarations/intersecting-supports-do-not-commute.md) | 177 | `result-track:9412db4ef11a1aeabe49dee5eeb5220be6dddb8fd387519c46394d7bb2fbe739` |
| 31 | `theorem` | [excessive_displacement_rejected](../../../../Combinatorics/DisjointTranspositions.lean/declarations/excessive-displacement-rejected.md) | 185 | `result-track:29c594f5cec4a3f16dee5d1d252969f9a5f2488cd57fcb5fb5618cc9fe9d295f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a88be1979db0eb319f43ae67b2cb16a0223aced820c0f4598866e8a0278caa4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
