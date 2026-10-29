# Verification target: Dedekind Domain Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d95775176a0af0a365db04b7cee64e727de57b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d95775176a0af0a365db04b7cee64e727de57b`.

Source path: `GRWTSK/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean.json)

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
| 1 | `class` | [Ring.DimensionLEOne](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/ring-dimensionleone.md) | 65 | `declaration-track:cebf32504175f49490916076b40ec16efcac460a148806c222a9f1b60621be2c` |
| 2 | `theorem` | [Ideal.IsPrime.isMaximal](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/ideal-isprime-ismaximal.md) | 70 | `result-track:5fbef793839038f21cfabf4b4e6477c00d36d42ee0f9639592abed838416aba7` |
| 3 | `instance` | [principal_ideal_ring](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/principal-ideal-ring.md) | 76 | `declaration-track:ed3d33f2698ceef67e514a170196be31db5bfce289f64e74bd8169e611e8d524` |
| 4 | `theorem` | [of_isIntegral](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/of-isintegral.md) | 81 | `result-track:667cc011efc5eaec62c58dde4180ce01c980d01056f6613b961b4de26358de65` |
| 5 | `instance` | [integralClosure](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/integralclosure.md) | 90 | `declaration-track:030ec137b6213df9d325077f699bf3c5be5cab30e717a96a90153683697301ed` |
| 6 | `theorem` | [not_lt_lt](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/not-lt-lt.md) | 96 | `result-track:8aae4ab3054f0124f30ec3a247b0699823bed8cf3220cfc125d220e237676e7c` |
| 7 | `theorem` | [eq_bot_of_lt](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/eq-bot-of-lt.md) | 100 | `result-track:9db2a162957039cfcf86f4b719091b6e59a4ef88b7deb1b97afbd9b0e7f707fb` |
| 8 | `theorem` | [of_ringEquiv](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/of-ringequiv.md) | 105 | `result-track:0e313cfc264d243121cec43178b796ccdf4f15d12baf2ffbde4d00f17a78e6f7` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 113 | `declaration-track:ee32b6e7356cc2298be88f407922437adae3b50fc1c7f7cbb14247ec3a3f6de8` |
| 10 | `class` | [IsDedekindRing](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/isdedekindring.md) | 126 | `declaration-track:4cb947ca44177fdf575d162c06a9ab766586fed95b72b87cac3ef1c67fddf102` |
| 11 | `theorem` | [isDedekindRing_iff](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/isdedekindring-iff.md) | 132 | `result-track:a0835afe80a125345b5f9e33299f980308d18f0677f442eb7c6c4d8acd377d84` |
| 12 | `class` | [IsDedekindDomain](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/isdedekinddomain.md) | 152 | `declaration-track:d30ba59a5e73ae3895ff6b15f474d405c37f8f5be5e4e6a198b7beb0f7e7a381` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 164 | `declaration-track:a4f1019d9836ca09bc4368f86f65d716f3419a476627ad685cb32d3ac5faa9a6` |
| 14 | `theorem` | [isDedekindDomain_iff](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/isdedekinddomain-iff.md) | 169 | `result-track:3cdc49f401312daecababc08cf043a5ec480d73c8fae821eceeb27c223e08908` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/instance.md) | 178 | `declaration-track:a09ebf1a47e6b62dc8f7c4e3d5819fd51d323f93337343bf752dd18e204eeda7` |
| 16 | `theorem` | [IsLocalRing.primesOver_eq](../../../../CommutativeAlgebra/DedekindDomainBasicNamespacedPublic.lean/declarations/islocalring-primesover-eq.md) | 185 | `result-track:a8cfe86105388f1c320961ad81c78a759d36fe2a33a83ce6753acf2f97e003c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad9098a260bf615edd30db02fcc4b54054960a8624b5d23551d444234e7fcfc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
