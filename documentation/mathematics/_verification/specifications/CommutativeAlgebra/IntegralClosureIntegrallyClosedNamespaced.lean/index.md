# Verification target: Integral Closure Integrally Closed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3b2c3fe97eec48df615cc5229fbc9200ab40b45",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3b2c3fe97eec48df615cc5229fbc9200ab40b45`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Integral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosedin.md) | 69 | `declaration-track:2794f4e138377e415f73bc2acbb0d56d3b1963a3737a47e30928853753e4995a` |
| 2 | `abbrev` | [IsIntegrallyClosed](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed.md) | 77 | `declaration-track:29f3ea1df7007fa27fe8cb4ea548bc2abb3e6a7a205412896c69f80b3db37d54` |
| 3 | `theorem` | [AlgHom.isIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/alghom-isintegrallyclosedin.md) | 85 | `result-track:9631cfe8b16eb7971e124d87b10fa73aa511f1260013051407126ff954aa5989` |
| 4 | `theorem` | [AlgEquiv.isIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/algequiv-isintegrallyclosedin.md) | 98 | `result-track:7e29d3f1d337ed887300fc0ca85262c3605128cc636648d99bf667db6328b160` |
| 5 | `theorem` | [isIntegrallyClosed_iff_isIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed-iff-isintegrallyclosedin.md) | 105 | `result-track:74838688b4942c76619d2c7725690626b77f9f0d4d2012408fb0ec67610463cf` |
| 6 | `theorem` | [isIntegrallyClosed_iff_isIntegralClosure](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed-iff-isintegralclosure.md) | 110 | `result-track:dd6b01b4042436906ee317c5e62f46c86bbc7d473a12383de645ce8778ef8017` |
| 7 | `theorem` | [isIntegrallyClosedIn_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosedin-iff.md) | 114 | `result-track:f2cadd21a356ec731c91efad9717f079c45127ffd1c30d4391830df1016b1970` |
| 8 | `theorem` | [isIntegrallyClosed_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed-iff.md) | 128 | `result-track:7d789b34a1bfbfcc24bbd376320b1d7bb36f71a84d971f45dfdac2dbafddc311` |
| 9 | `theorem` | [algebraMap_eq_of_integral](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/algebramap-eq-of-integral-source-edition-2.md) | 139 | `result-track:66f0e7a3d3f524c9508fc7b712e2b71a84852ead8352c4e6b6c6eb7db73bec6d` |
| 10 | `theorem` | [isIntegral_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegral-iff-source-edition-2.md) | 143 | `result-track:0d98e4979b75b560bc335b2a3c0ec4cd48d6779bac1cec0b0bcb92d666c210d7` |
| 11 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/exists-algebramap-eq-of-isintegral-pow.md) | 147 | `result-track:0b1f45257b2435266e146ceb47a86666149b1f958b5b113d34e3bbd16983cb19` |
| 12 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra.md) | 152 | `result-track:222633e231562681125a53353ba7f614f30ba1ccce980c25f2050bc074f21c15` |
| 13 | `theorem` | [integralClosure_eq_bot_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/integralclosure-eq-bot-iff.md) | 159 | `result-track:19031a879d8638d87a21528419c719bfd0121d1ffa9038c10c93e2f6dea05099` |
| 14 | `theorem` | [integralClosure_eq_bot](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/integralclosure-eq-bot.md) | 174 | `result-track:883de9ceff7194da037fe0ee643f454f8826f0c31182ea012aa6d419c45c7d59` |
| 15 | `lemma` | [of_isIntegralClosure](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/of-isintegralclosure.md) | 181 | `result-track:799afbbd25bc23d6066a4dd75d93452914e7b8ac6442339a69c4b50ee82b0e43` |
| 16 | `lemma` | [Integral Closure Integrally Closed Namespaced](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/of-isintegrallyclosedin.md) | 189 | `result-track:f52f578bba0903957afa68dbbacbd9b427d86a9389f95549d516c04becabe195` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/instance.md) | 207 | `declaration-track:fb266c38df92166dd98021d171edade1cbf027a8e42c22febde79da18072eb4a` |
| 18 | `theorem` | [algebraMap_eq_of_integral](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/algebramap-eq-of-integral.md) | 210 | `result-track:40e262dbe3b086da5d40ed5c72fbc030b28b5416da1ad3716bfc41140d6a0a86` |
| 19 | `theorem` | [isIntegral_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegral-iff.md) | 214 | `result-track:0022f1f1f46ce4fc23ad0fd07cf74e0520911e3a21844882736d72f5e9c0c607` |
| 20 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/exists-algebramap-eq-of-isintegral-pow-source-edition-2.md) | 218 | `result-track:b90ae45d1e533ee9bca3921b43b99688f48d6e9dafebea614c776a898e06c96a` |
| 21 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra-source-edition-2.md) | 222 | `result-track:2be95f31e831e08dec008ef9ffb9a6c568b46a33f57ed19ad1412b85f0506bde` |
| 22 | `theorem` | [of_equiv](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/of-equiv.md) | 227 | `result-track:c846257225e194b8e42c7e04c0ce9054eefcc91b5d7b169a1168bc8469345ed3` |
| 23 | `instance` | [Integral Closure Integrally Closed Namespaced](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/of-isintegrallyclosed.md) | 238 | `declaration-track:0d01e957ef589e8618e25e0f066de756d7c9f2f12ae61da846124d439daa20f5` |
| 24 | `theorem` | [integralClosure_eq_bot_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/integralclosure-eq-bot-iff-source-edition-2.md) | 245 | `result-track:d4ae94e5470840b6ae8b597a357be84c2dc201920c120f46b43080c5266ea360` |
| 25 | `theorem` | [pow_dvd_pow_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/pow-dvd-pow-iff.md) | 250 | `result-track:13473b09b3601afffa5e850740639f06f3a7601736008e08333245beef5bdc7d` |
| 26 | `theorem` | [integralClosure_eq_bot](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/integralclosure-eq-bot-source-edition-2.md) | 274 | `result-track:cbb0146b02135668b9d96fc03b89f321301c5078bf6ce7fa7ac87a1d39f812de` |
| 27 | `theorem` | [isIntegrallyClosedOfFiniteExtension](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosedoffiniteextension.md) | 289 | `result-track:88465cf62f91896539e74c106c84de0de3d94a3c92187407a2914be5ec83dc74` |
| 28 | `lemma` | [isIntegrallyClosed_of_isLocalization](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/isintegrallyclosed-of-islocalization.md) | 300 | `result-track:b5d9782765c1b321e9c4d08063a5da0354d4f2404798a17400a50df5607f8a38` |
| 29 | `instance` | [Field.instIsIntegrallyClosed](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosedNamespaced.lean/declarations/field-instisintegrallyclosed.md) | 322 | `declaration-track:114be20b5726a6c732497c79d16a3fbf172aeb21405584baa8f67a84d49dd84f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df7597523e047e59ee8d9b71cae7f80cfceda1744939a9a40d59a04f9b911fb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean","GRWTSK/_verification/specifications/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
