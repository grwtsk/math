# Verification target: Ideal Kummer Dedekind Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b80795e016a90af268cd2e16d7b0afb750149ba4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b80795e016a90af268cd2e16d7b0afb750149ba4`.

Source path: `GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponent](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/exponent.md) | 73 | `declaration-track:2560842e00cce9bf2a6281b5c77af2522be968a85bc355323585c7dee6cf644a` |
| 2 | `theorem` | [exponent_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/exponent-eq-one-iff.md) | 77 | `result-track:fe5e9cded2866d397fc67755ed225ba5dae4195784c4de7603d2b6f58e6556db` |
| 3 | `theorem` | [not_dvd_exponent_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/not-dvd-exponent-iff.md) | 80 | `result-track:f49fe0e6cededc3c8f9a7d2ee215015ea2d20848af156e4d06ee89552647274a` |
| 4 | `theorem` | [exponent_eq_sInf](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/exponent-eq-sinf.md) | 87 | `result-track:19c8544fd0a83cc72839c1f7b115bad92f9e913911d3ea0d1713f101b48fcb84` |
| 5 | `def` | [ZModXQuotSpanEquivQuotSpan](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/zmodxquotspanequivquotspan.md) | 95 | `declaration-track:63a4dcfea428baf65b906b15a1797d95b1e21cae3f2d2a72a7fcbc917b022776` |
| 6 | `theorem` | [ZModXQuotSpanEquivQuotSpan_mk_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/zmodxquotspanequivquotspan-mk-apply.md) | 103 | `result-track:72a5b7a578efe9d4f02932b7b77cce462900722b45bdec1d912c8c7cf024b678` |
| 7 | `abbrev` | [monicFactorsMod](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/monicfactorsmod.md) | 118 | `declaration-track:f8fa16a0823ed23d999dc5c3e8a6aba434505ed3409b0e2d76c9478dfd444651` |
| 8 | `def` | [ZModXQuotSpanEquivQuotSpanPair](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/zmodxquotspanequivquotspanpair.md) | 125 | `declaration-track:adf8626bf1ea9a40e8c5698d52a736ae03e7c05ed191285232cbc1785d2db684` |
| 9 | `def` | [primesOverSpanEquivMonicFactorsModAux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/primesoverspanequivmonicfactorsmodaux.md) | 157 | `declaration-track:1875cfb7baec4825b2b7580c8573c88d82f92d5bb5d0413286561846ad25cb68` |
| 10 | `theorem` | [primesOverSpanEquivMonicFactorsModAux_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/primesoverspanequivmonicfactorsmodaux-symm-apply.md) | 164 | `result-track:5d7f5c45266bcb1354718dff94bf879fc29d0bf3fda94698e0782213c1144579` |
| 11 | `def` | [primesOverSpanEquivMonicFactorsMod](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/primesoverspanequivmonicfactorsmod.md) | 177 | `declaration-track:f44fedc30264019f1c9e880821b1dd83495c75290436b9ce6fd6581e9e92cd46` |
| 12 | `theorem` | [primesOverSpanEquivMonicFactorsMod_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/primesoverspanequivmonicfactorsmod-symm-apply.md) | 186 | `result-track:1702bf94630d7ea8ac5793981458ac9efb8b6b3a8d3c7b42d83624390c0fc075` |
| 13 | `theorem` | [primesOverSpanEquivMonicFactorsMod_symm_apply_eq_span](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/primesoverspanequivmonicfactorsmod-symm-apply-eq-span.md) | 199 | `result-track:6c95c63016926044cf9dbdd2cb20b99f6e2367959aaabac917be9fd8afadeee5` |
| 14 | `theorem` | [liesOver_primesOverSpanEquivMonicFactorsMod_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/liesover-primesoverspanequivmonicfactorsmod-symm.md) | 209 | `result-track:1242bfe3d02d663e6b32c8e0286fd413c8ef4980ecd95d01768bac8463384bf9` |
| 15 | `theorem` | [inertiaDeg_primesOverSpanEquivMonicFactorsMod_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/inertiadeg-primesoverspanequivmonicfactorsmod-symm-apply-source-edition-2.md) | 219 | `result-track:551b37c5a57c23ff7472c107b0d2ea64f144930510feac811571192f374bdbb5` |
| 16 | `theorem` | [inertiaDeg_primesOverSpanEquivMonicFactorsMod_symm_apply'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/inertiadeg-primesoverspanequivmonicfactorsmod-symm-apply.md) | 235 | `result-track:4efbe799da7252d8eed3f1d8b34345305ed5c87b3d8963057b1c5cc6a8fc3965` |
| 17 | `theorem` | [ramificationIdx_primesOverSpanEquivMonicFactorsMod_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/ramificationidx-primesoverspanequivmonicfactorsmod-symm-apply-source-edition-2.md) | 247 | `result-track:d8dab8e9262f2e68ba7ff3960a62a7fe2511a9ca97de0c885c8d5a2560ef89f5` |
| 18 | `theorem` | [ramificationIdx_primesOverSpanEquivMonicFactorsMod_symm_apply'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/IdealKummerDedekindNamespacedPublic.lean/declarations/ramificationidx-primesoverspanequivmonicfactorsmod-symm-apply.md) | 265 | `result-track:39cd4306a533b5bcb198678accf8e02d7e4408d1115d35ac089c8445cb6b0cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=172f9a88c7f66100c2dbf04d598fd016983005854e77377d3b7d53d6bd83b0a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean","GRWTSK/_verification/specifications/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
