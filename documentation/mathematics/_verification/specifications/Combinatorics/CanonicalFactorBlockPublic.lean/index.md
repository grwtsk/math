# Verification target: Canonical Factor Block Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbb03424e1107c51b98bd3b15ae45091417f206d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/index.md) · [Full source](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbb03424e1107c51b98bd3b15ae45091417f206d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfOpenFactorExponent](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/halfopenfactorexponent.md) | 40 | `declaration-track:6b935b239cf35e504b355369910a94f25f0ff6a1f0baa3bc111213fe9340a030` |
| 2 | `theorem` | [pow_halfOpenFactorExponent_le](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/pow-halfopenfactorexponent-le.md) | 44 | `result-track:d29662a09af58ef614200723c8f88b808a6cea5a6f7511795d3cc129e2f846a8` |
| 3 | `theorem` | [lt_pow_halfOpenFactorExponent_succ](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/lt-pow-halfopenfactorexponent-succ.md) | 50 | `result-track:28df09af9a856a68125f450cc60be6693ae1ac1c41126e0a016e98f03038e229` |
| 4 | `theorem` | [halfOpen_boundary_pair_uses_q_add_one](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/halfopen-boundary-pair-uses-q-add-one.md) | 59 | `result-track:953959f84ddcba80e2eef8b5b506ad58ecfe8c2430d92aebfedfa205e7a616ba` |
| 5 | `def` | [IsEffectiveTypeIIShellPair](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/iseffectivetypeiishellpair.md) | 76 | `declaration-track:02a3e33feb9c2c4704096e6bfaebf6147058e53d884cb6fae8f7089e498bd4ac` |
| 6 | `def` | [effectiveTypeIIShellPairs](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/effectivetypeiishellpairs.md) | 86 | `declaration-track:3c855338ffacc402bb0470cc839ae30203140b79c40f6c7d5ac578188474c907` |
| 7 | `theorem` | [mem_effectiveTypeIIShellPairs_iff](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/mem-effectivetypeiishellpairs-iff.md) | 92 | `result-track:e38858d84a89942c7a21598927d8a600147d26831b892be6f96382131fcdabe5` |
| 8 | `structure` | [TypeIIShellFactorBlock](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock.md) | 101 | `declaration-track:a465b0376eb97ae6391967c2db62c5351a9dd5d62736c47fe0a1cdd22ecb9bdd` |
| 9 | `theorem` | [TypeIIShellFactorBlock.ext](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock-ext.md) | 120 | `result-track:8c8f903d0692483acf785a601100deda843f78d98a33820e639f7c532473be1f` |
| 10 | `def` | [TypeIIShellFactorBlock.ContainsLeft](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock-containsleft.md) | 131 | `declaration-track:2eace23131d73a95db53563ad5c047ac96c07b90d828c8ca423b5ac28e996acb` |
| 11 | `def` | [TypeIIShellFactorBlock.ContainsRight](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock-containsright.md) | 139 | `declaration-track:b36905da34a181c93a3eacd980db11ca9a93e4918a8b22942e46428ee34c01fe` |
| 12 | `abbrev` | [TypeIIShellFactorBlock.Left](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock-left.md) | 146 | `declaration-track:4f7e034865eb0ed78dbf0641b0c7bf6cc498cbb8f8f3b73da62dddb3ae080372` |
| 13 | `abbrev` | [TypeIIShellFactorBlock.Right](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock-right.md) | 151 | `declaration-track:d127019b2cda619ceae7d0e13996539cea943cfae6b08c4d8e5d0474a5fc56e2` |
| 14 | `instance` | [TypeIIShellFactorBlock.leftFintype](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock-leftfintype.md) | 155 | `declaration-track:fb6ec0c6470e249090f8e609203ab34e513a24c3c6ee211c61c18f1fddb0b899` |
| 15 | `instance` | [TypeIIShellFactorBlock.rightFintype](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/typeiishellfactorblock-rightfintype.md) | 159 | `declaration-track:1161ea6658e429e02e3de4742e2f78a005a1edff588b9c0c0828cc79832a0195` |
| 16 | `theorem` | [effectiveShellPair_exponentRelation](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/effectiveshellpair-exponentrelation.md) | 166 | `result-track:0d413466111ef82bfee474e41bb985bf275af16e9daaace66ec337a0cd0381bc` |
| 17 | `def` | [shellFactorBlockOfPair](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/shellfactorblockofpair.md) | 212 | `declaration-track:748daa5d3573b800a96c2b78f12313901eb2a58602bb77a30d7cd17f97d62de3` |
| 18 | `def` | [relevantShellBlocks](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/relevantshellblocks.md) | 236 | `declaration-track:e4f9fb39c47a79884c3238d70dc5c36966db071140950923ccc0b09f675bca37` |
| 19 | `theorem` | [shellFactorBlockOfPair_mem_relevant](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/shellfactorblockofpair-mem-relevant.md) | 242 | `result-track:75d82f6d62ccffd60ed9cc1b3f9dee8a53736ff0b0dfa537f53d7c314bd6d4ff` |
| 20 | `theorem` | [shellFactorBlockOfPair_left_mem](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/shellfactorblockofpair-left-mem.md) | 251 | `result-track:64259446a322bf0e55a78556e925ec4149e5e68c9d7132b6808df42265d427de` |
| 21 | `theorem` | [shellFactorBlockOfPair_right_mem](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/shellfactorblockofpair-right-mem.md) | 262 | `result-track:0d7642a015315710de535ea17e48340689ece87a2f3739bd3cea080226f2d067` |
| 22 | `theorem` | [productShell_pair_has_relevant_exponents](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/productshell-pair-has-relevant-exponents.md) | 274 | `result-track:f08c480ff85aa633cc651da0cb58aa1261b3d667b8d6b23720a93f337b7920e4` |
| 23 | `theorem` | [halfOpenFactorExponent_eq_of_mem](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/halfopenfactorexponent-eq-of-mem.md) | 288 | `result-track:80b736c508abddb22f16086e7557e6986b6b221736cf1e588725ff57bb824f4d` |
| 24 | `theorem` | [relevantShellBlocks_unique_assignment](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/relevantshellblocks-unique-assignment.md) | 298 | `result-track:7d55522a7839bcc7569afbb93f860d6e206e9ea9890df1e1dfad1a70f2c5a061` |
| 25 | `def` | [shellFactorBlockPairs](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/shellfactorblockpairs.md) | 324 | `declaration-track:be7271d577b098440b88ea7986f5fe3f2b754dcd567a550d6f0571a017639f93` |
| 26 | `theorem` | [mem_shellFactorBlockPairs_iff](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/mem-shellfactorblockpairs-iff.md) | 332 | `result-track:b426a9faa941bec2a355a568718899ddaf9187714b959ca78cddb5b810194b8b` |
| 27 | `theorem` | [relevantShellBlocks_pairwiseDisjoint](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/relevantshellblocks-pairwisedisjoint.md) | 343 | `result-track:d5931c28df64d9a8f419f586df3656247926e4a02054db994c9be0ee68ccccdf` |
| 28 | `theorem` | [productShell_eq_disjointUnion_factorBlocks](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/productshell-eq-disjointunion-factorblocks.md) | 357 | `result-track:a7f471ae2055c0bd91a942cc1a29650be8d437ef33650f92565f54d5242244b2` |
| 29 | `def` | [relevantShellExponentPairs](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/relevantshellexponentpairs.md) | 377 | `declaration-track:1453f01f6a9868a9a0a68c62eb4a03bff5d5bfacfc3c9b870d08e4ccde8daf54` |
| 30 | `theorem` | [exponentPair_mem_relevant](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/exponentpair-mem-relevant.md) | 383 | `result-track:646cf6f2f44f323061a937f5628cbb8fc4622ea497fd4121c68b7e20f5cbb846` |
| 31 | `theorem` | [card_relevantShellExponentPairs_le](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/card-relevantshellexponentpairs-le.md) | 394 | `result-track:6e7d1bcd0c4e35a21e3066818a9f3b5f6f0cac47c94994e4480c4174ed2fd126` |
| 32 | `theorem` | [card_relevantShellBlocks_le](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/card-relevantshellblocks-le.md) | 410 | `result-track:f8c9720b59d4226d671ab8a8cb55cb0152c9106a604df9ff4399b5b11e9f9e00` |
| 33 | `def` | [shellBlockLeftCoefficient](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/shellblockleftcoefficient.md) | 432 | `declaration-track:462f6affe9208155aec32b2377892d59e226e4f3f9423096f79a19622638778f` |
| 34 | `def` | [shellBlockRightCoefficient](../../../../Combinatorics/CanonicalFactorBlockPublic.lean/declarations/shellblockrightcoefficient.md) | 438 | `declaration-track:999ed95b53cac5a42024fecd9dceeff7793346415bdd55b126289434f1265670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdfe75828f4a6e2f62ab1a2247368b214ba40028de305a82f5225229895639a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
