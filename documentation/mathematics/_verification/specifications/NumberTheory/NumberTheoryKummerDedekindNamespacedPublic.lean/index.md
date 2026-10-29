# Verification target: Number Theory Kummer Dedekind Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c0e3ddc0e3024b53b5b7668a54278d915f00827",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c0e3ddc0e3024b53b5b7668a54278d915f00827`.

Source path: `GRWTSK/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotMapEquivQuotQuotMap](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/declarations/quotmapequivquotquotmap.md) | 86 | `declaration-track:e711947a8e8fbfd97b4776978bdbdd469dc6b30a28412a0b05aa0a7657b832bf` |
| 2 | `lemma` | [quotMapEquivQuotQuotMap_symm_apply](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/declarations/quotmapequivquotquotmap-symm-apply.md) | 94 | `result-track:8d42a70f71834eef2805200738cb699c1c3f3efa289aa8ef41694f648b850176` |
| 3 | `def` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk.md) | 112 | `declaration-track:6c689f35485982f71fbab3139181ceac39736d269839292e0cc5c7cbba757acf` |
| 4 | `theorem` | [emultiplicity_factors_map_eq_emultiplicity](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/declarations/emultiplicity-factors-map-eq-emultiplicity.md) | 128 | `result-track:9201e0c400e1e55963d3eb6addcf8c6ab62ac88b61fa0582df7223aa95655cd4` |
| 5 | `theorem` | [normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/declarations/normalizedfactors-ideal-map-eq-normalizedfactors-min-poly-mk-map.md) | 142 | `result-track:4ea826c5d681d3c0eff0a1fecae594a529301daf89dc14328e83b98fa3a85a85` |
| 6 | `theorem` | [Ideal.irreducible_map_of_irreducible_minpoly](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/declarations/ideal-irreducible-map-of-irreducible-minpoly.md) | 185 | `result-track:df156e50ccb56f15338f5472653260610c4a02c691b4c4ad87c4e58f48b01384` |
| 7 | `theorem` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span](../../../../NumberTheory/NumberTheoryKummerDedekindNamespacedPublic.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk-symm-apply-eq-span.md) | 220 | `result-track:e0d8cec48a86744aeb92694dda7e4909abbbfda1513ba93e7f7f92fbb309882a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9278cbd21754ae0fb9b7c1971dce24081f9c44b55bc22e62c0d95dc30af2fd68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean","GRWTSK/_verification/specifications/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
