# Verification target: Complex Locally Uniform Limit Locally Uniform Limit Namespaced Public Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d691113fbecf81a638eac73916f0c2a3e089be78",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d691113fbecf81a638eac73916f0c2a3e089be78`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean.json)

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
| 1 | `def` | [cderiv](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/cderiv.md) | 51 | `declaration-track:88329e578f7328d461b02968159e2f8d194b9005dd7381f702c250beb28a98cf` |
| 2 | `theorem` | [cderiv_eq_deriv](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/cderiv-eq-deriv.md) | 54 | `result-track:24dee3996964056938b6ed3a6705d4c2d6c4f6816ee9b9cd852059af56d49366` |
| 3 | `theorem` | [norm_cderiv_le](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/norm-cderiv-le.md) | 58 | `result-track:1d1d4927dc59edad15f3c4547c0e1b566fcb68a4ae420f08957e881f38eb839e` |
| 4 | `theorem` | [cderiv_sub](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/cderiv-sub.md) | 73 | `result-track:95b38cdb768a026f5ff26d0a36ba555b8d24603cb27f0ebf78cac503916dd48a` |
| 5 | `theorem` | [norm_cderiv_lt](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/norm-cderiv-lt.md) | 85 | `result-track:03099bb148885a62a2aa368e49bd1705a3b469a847d3e118c90566475f515b6e` |
| 6 | `theorem` | [norm_cderiv_sub_lt](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/norm-cderiv-sub-lt.md) | 94 | `result-track:270114af0b5edf23b2f4d8705a48ceacce7a4d844e816efd4814f0b72d3caf82` |
| 7 | `theorem` | [Complex Locally Uniform Limit Locally Uniform Limit Namespaced Public Source Edition2](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/cderiv-source-line-99-occurrence-2.md) | 99 | `result-track:a58fcc398527a79045d1121e8fd9ce0f5547e65d7d6d24f5a2d242878a19e5ac` |
| 8 | `theorem` | [tendstoUniformlyOn_deriv_of_cthickening_subset](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/tendstouniformlyon-deriv-of-cthickening-subset.md) | 122 | `result-track:8dbb39f2c6debdd32b7214e75211b915bf7e8d9fa7fe22086dfc6596c576fbfc` |
| 9 | `theorem` | [exists_cthickening_tendstoUniformlyOn](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/exists-cthickening-tendstouniformlyon.md) | 135 | `result-track:091bd86914b3dc689e24e4c802ca946442ec4e6cb06229f79386267a5cf1b8d8` |
| 10 | `theorem` | [Complex Locally Uniform Limit Locally Uniform Limit Namespaced Public Source Edition2](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/differentiableon.md) | 144 | `result-track:9c94e17d42bdd5fa00ba6b62a2f7f2fc9e84a3530fea87f31ef4893f3b9363d7` |
| 11 | `theorem` | [Complex Locally Uniform Limit Locally Uniform Limit Namespaced Public Source Edition2](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/deriv.md) | 162 | `result-track:497dc2c1a6fde8ce0c3957f63eaef4030c087cde2b57d13cccb05fa1d66882df` |
| 12 | `theorem` | [differentiableOn_tsum_of_summable_norm](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/differentiableon-tsum-of-summable-norm.md) | 179 | `result-track:64e8510a410f1cbfd4b58e44d66f2c69826be7f4226f80fab2f2659083fa82fd` |
| 13 | `theorem` | [hasSum_deriv_of_summable_norm](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/hassum-deriv-of-summable-norm.md) | 190 | `result-track:3e36fc63a5d56e0bccb038ad0ccbcc897ac32bd882b62c9cb4618c456e6dccb2` |
| 14 | `theorem` | [logDeriv_tendsto](../../../../FunctionsOfAComplexVariable/ComplexLocallyUniformLimitLocallyUniformLimitNamespacedPublicSourceEdition2.lean/declarations/logderiv-tendsto.md) | 209 | `result-track:205aaa3d3f5460deaee42706dc50e9c13970771ddc3543b873e4eedd46ea26d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18047e667a2275208aecca76dc775f73c3cb2dfd41f1bb717ea5f77e6b3c0a44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
