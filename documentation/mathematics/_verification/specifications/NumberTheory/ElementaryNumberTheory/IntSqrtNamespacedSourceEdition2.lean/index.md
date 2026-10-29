# Verification target: Int Sqrt Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77ac268043b34b03661330dd13dafbafccc15687",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variantcd2a1882305174790273878b2d1817111582220ad19f72928c64fb5607fdfb08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77ac268043b34b03661330dd13dafbafccc15687`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variantcd2a1882305174790273878b2d1817111582220ad19f72928c64fb5607fdfb08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Sqrt/Variantcd2a1882305174790273878b2d1817111582220ad19f72928c64fb5607fdfb08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Sqrt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtNamespacedSourceEdition2.lean/declarations/sqrt.md) | 32 | `declaration-track:e0f0088d9473d28b18cb2a5d6cb557975d9b10fdf0bdfbdd5ee572aa42a7a95a` |
| 2 | `theorem` | [sqrt_eq](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtNamespacedSourceEdition2.lean/declarations/sqrt-eq.md) | 36 | `result-track:cba2282e9c181d0a93f3544a25b8341cc74983450e21d3b027c016431f2d4cf8` |
| 3 | `theorem` | [exists_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtNamespacedSourceEdition2.lean/declarations/exists-mul-self.md) | 40 | `result-track:7828de99afc61963bce502a517258f342a657f8d02dfc89fe024735a831f429e` |
| 4 | `theorem` | [sqrt_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/IntSqrtNamespacedSourceEdition2.lean/declarations/sqrt-nonneg.md) | 44 | `result-track:285df8917cf638557cfbf0820ebaf4be273a3f1add44b2e89ead45a3ee6a315f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93382c88078180dc970f090699c8f30f9b70bad2f3d4de6618b4e373a32d9117 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variantcd2a1882305174790273878b2d1817111582220ad19f72928c64fb5607fdfb08.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Sqrt/Variantcd2a1882305174790273878b2d1817111582220ad19f72928c64fb5607fdfb08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
