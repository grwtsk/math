# Verification target: Prime Power Log Sums Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "552ab05a139521988263e750638c51b8fb26a2ae",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `552ab05a139521988263e750638c51b8fb26a2ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ChebyshevFunctions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerPairsUpTo](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/primepowerpairsupto.md) | 24 | `declaration-track:30a6a5a17b0456ebbbde51d58faaedd3fa942dcf065e81de4ab59e6196c735d7` |
| 2 | `theorem` | [mem_primePowerPairsUpTo_iff](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/mem-primepowerpairsupto-iff.md) | 32 | `result-track:0723820bbed8b007a6e558e708fce12e91030e85af935ce4849991225dc0c7f9` |
| 3 | `def` | [chebyshevPsi](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/chebyshevpsi.md) | 67 | `declaration-track:87928a0fdc0b0d12f08a67c056d0d0a9149b5d270001f98e056db5fbe06f0f25` |
| 4 | `theorem` | [chebyshevPsi_nonneg](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/chebyshevpsi-nonneg.md) | 71 | `result-track:5592af7e6d016f424138b14bd609e205aae20c349b572c66929ad455f28e33b7` |
| 5 | `theorem` | [chebyshevPsi_eq_sum_log_prime](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/chebyshevpsi-eq-sum-log-prime.md) | 83 | `result-track:f2ee43d00b79061b22d267bd688fa8f5e66f0f49252aeea841d2ae088d982676` |
| 6 | `theorem` | [chebyshevTheta_le_chebyshevPsi](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/chebyshevtheta-le-chebyshevpsi.md) | 105 | `result-track:80ae1e31f6b5bd0d6d1a78e9e64e36626ae2defc38a204a0575f2c4e8f936f5c` |
| 7 | `theorem` | [chebyshevPsi_le_sum_log_all_prime_powers](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/chebyshevpsi-le-sum-log-all-prime-powers.md) | 139 | `result-track:a99381112708ea07cf70397836ae8ac4baabd5e37e846e2d9f979c73474aeac1` |
| 8 | `def` | [ChebyshevPsiUpperBoundTarget](../../../../Combinatorics/PrimePowerLogSumsNamespaced.lean/declarations/chebyshevpsiupperboundtarget.md) | 192 | `declaration-track:7925800459325a0aa4f71625657ab45819c5ba968aeeaefb9c47a3a11b98e33b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=895e5d8cf22b512ae18e5be909630287911f398c82d670c817e79f76f4c392f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant8969d9c2ae43cf5274d146c25554aabe733b1bca4528591622afed3c57d454c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
