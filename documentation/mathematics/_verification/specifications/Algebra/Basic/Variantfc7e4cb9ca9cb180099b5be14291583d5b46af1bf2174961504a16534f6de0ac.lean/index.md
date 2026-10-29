# Verification target: GRWTSK.Algebra.Basic.Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d39ae1c79b843057279df6a9cabe8bce7295f5f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean/index.md) · [Full source](../../../../../Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d39ae1c79b843057279df6a9cabe8bce7295f5f`.

Source path: `GRWTSK/Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [codomain_trivial_iff_range_eq_singleton_zero](../../../../../Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean/declarations/codomain-trivial-iff-range-eq-singleton-zero--0511830278ad24a434c39d5c.md) | 41 | `result-track:0511830278ad24a434c39d5c91fa32c69db07c6a1975ad51a5205ad37e21a116` |
| 2 | `theorem` | [map_dvd](../../../../../Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean/declarations/map-dvd--07fe88ff6ca2f335bc1d8d47.md) | 53 | `result-track:07fe88ff6ca2f335bc1d8d47683b3f8e857151c660773cf07a332ea8658ce560` |
| 3 | `theorem` | [Function.Injective.isDomain](../../../../../Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean/declarations/function-injective-isdomain--ca851a059f6cf6f63e21bdab.md) | 61 | `result-track:ca851a059f6cf6f63e21bdabb0cbcf2aa454f7c30240455629fe00662052bcb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=071080689b8ae85a43dec7865c50e9ce0ac9a40cd16dd59e32b4e51c5b5a6e21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
