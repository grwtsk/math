# Verification target: Star Subsemiring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c0e46151e43c9dbbb53581827b512a071332277",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subsemiring/Variant5a799dd8b3438f470b4aa0da9a28a91761109370838f439d63bbe0d4617a807b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c0e46151e43c9dbbb53581827b512a071332277`.

Source path: `GRWTSK/Algebra/Subsemiring/Variant5a799dd8b3438f470b4aa0da9a28a91761109370838f439d63bbe0d4617a807b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subsemiring/Variant5a799dd8b3438f470b4aa0da9a28a91761109370838f439d63bbe0d4617a807b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.NonUnitalSubsemiring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StarSubsemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/starsubsemiring.md) | 19 | `declaration-track:9fe7aad086fdc0ddb3365cfa9db750efd7d53942bd8e14d7f7b7faec34a90043` |
| 2 | `instance` | [setLike](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/setlike.md) | 31 | `declaration-track:25ff10f3fcd973fe00825b53e10b59fb8a6fdd953a2f4c378930c731568515e5` |
| 3 | `def` | [ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/ofclass.md) | 42 | `declaration-track:e32908ba72f91558761aae9f2a9901548357d1cda3265062592f3add16da92a9` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/instance.md) | 51 | `declaration-track:00fa960a29c6aecd23d4889dd2ef473df700eeff19f8219c17fbdedffd3e2398` |
| 5 | `instance` | [starMemClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/starmemclass.md) | 63 | `declaration-track:ddd80d20ccc0a21d2917d25e7b781ad5a6130331743a0b59b39aed9f8eba3024` |
| 6 | `instance` | [subsemiringClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/subsemiringclass.md) | 66 | `declaration-track:205cb20789224358b84b97c4289c87dd3058e5489e2ed141f1ea8254d682ae57` |
| 7 | `instance` | [starRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/starring.md) | 73 | `declaration-track:d9022442081f399cdd4a98526c3c450c5936834caa9011cc3e4b0d5a3309e846` |
| 8 | `instance` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/semiring.md) | 79 | `declaration-track:53ef9ba34104e46b24b552f665e63a6342d06b621cd6287af16b7370e355650a` |
| 9 | `theorem` | [mem_carrier](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/mem-carrier.md) | 82 | `result-track:726e07bc25c36a436207c47bc5d380780f273a5eb26a58744efa9e2819bb3005` |
| 10 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/ext.md) | 86 | `result-track:104c63310a0ab54dfa9973f682e34c4c6b7720252774aeeae9c4af3f4e2b73be` |
| 11 | `lemma` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/coe-mk.md) | 90 | `result-track:8c4fcd001ad024d1e2b53bd0bd21c0e051d5610f4defc1383587ab95845886f8` |
| 12 | `theorem` | [mem_toSubsemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/mem-tosubsemiring.md) | 93 | `result-track:aab9db5baa516726d0087706577b35ac96860c691172b4ff56fb7564f858c058` |
| 13 | `theorem` | [coe_toSubsemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/coe-tosubsemiring.md) | 97 | `result-track:e3cc51868f18b7eb09b2fad9b24324f96479e4adc364acabc816be87f8ed6ee3` |
| 14 | `theorem` | [toSubsemiring_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/tosubsemiring-injective.md) | 100 | `result-track:e4c44cf96aff643f9918944fcb0a595481160e64eeb88420eed988574be24eca` |
| 15 | `theorem` | [toSubsemiring_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/tosubsemiring-inj.md) | 104 | `result-track:8fe8c808ca1626762d9934d9891d8f1f9ca5c33afd8b95276bb6f1c8a8c9d4f1` |
| 16 | `theorem` | [toSubsemiring_le_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/tosubsemiring-le-iff.md) | 107 | `result-track:d5b931ff63a115c4cdc1e15494f4e711eb2968df1974997b2b8aa6f0685fb67f` |
| 17 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/copy.md) | 113 | `declaration-track:d6d09a6b2bae8b4202180cff3bfe3e494441805ccad6ffdc8e89dcf3b827f161` |
| 18 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/coe-copy.md) | 118 | `result-track:150175f530bf80cc79a8329edb675464d82536b9cca5c2e1331e4a7984c24663` |
| 19 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/copy-eq.md) | 121 | `result-track:021ef454c9ddb7f3421e7e1a020702e438bbb2db0982befef79b773cfb168582` |
| 20 | `def` | [center](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/center.md) | 130 | `declaration-track:7b02b9634cec2f15f3112752a8c05dc083691818ad640dd45165132aca2dc992` |
| 21 | `def` | [center](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarSubsemiring.lean/declarations/center-source-edition-2.md) | 147 | `declaration-track:8687bc9e921cce407f56340cf3cfebf0d84748bc6978aee3c4acbce5e2dacde9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4becf1d1821e648c8c5b851f734c56d13127ada9a3bb9e1cf8fbbacefe85b0c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Subsemiring/Variant5a799dd8b3438f470b4aa0da9a28a91761109370838f439d63bbe0d4617a807b.lean","GRWTSK/_verification/specifications/Algebra/Subsemiring/Variant5a799dd8b3438f470b4aa0da9a28a91761109370838f439d63bbe0d4617a807b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
