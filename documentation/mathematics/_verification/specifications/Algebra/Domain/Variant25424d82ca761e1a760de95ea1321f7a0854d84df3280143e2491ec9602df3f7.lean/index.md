# Verification target: GRWTSK.Algebra.Domain.Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a88f3bd76dc99bb16351564d7e28c44cc85d9c7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/index.md) · [Full source](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a88f3bd76dc99bb16351564d7e28c44cc85d9c7`.

Source path: `GRWTSK/Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Identities` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shift](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/declarations/shift--9b277ed0ffaf1aa88063abec.md) | 63 | `declaration-track:9b277ed0ffaf1aa88063abec2f4d6e71425aac3c198f5ecb93470056de4ae24e` |
| 2 | `theorem` | [shift_coeff](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/declarations/shift-coeff--3b2f5ae9218ff2e2513892a7.md) | 66 | `result-track:3b2f5ae9218ff2e2513892a7a0afd60a8411c1f24370740dac6ca7cc2b91ed9b` |
| 3 | `theorem` | [verschiebung_shift](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/declarations/verschiebung-shift--1d6a752762f16f89141947e2.md) | 71 | `result-track:1d6a752762f16f89141947e2312e901f47a1027208db1f79d804923e9332bc24` |
| 4 | `theorem` | [eq_iterate_verschiebung](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/declarations/eq-iterate-verschiebung--fedaa1d95b0b9c817a6c039f.md) | 80 | `result-track:fedaa1d95b0b9c817a6c039f308e98d2267feb4b7392d6c42ae57e4d89e21e5a` |
| 5 | `theorem` | [verschiebung_nonzero](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/declarations/verschiebung-nonzero--c4bf2c2539d885fdebf6f2cb.md) | 88 | `result-track:c4bf2c2539d885fdebf6f2cb826104c0b5037c6575f9812b5120b20a40327f01` |
| 6 | `instance` | [(anonymous)](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/declarations/instance--a7b4235158ab1495937d6490.md) | 110 | `declaration-track:a7b4235158ab1495937d6490cf6804a0f9b76bbd428160a26356de8db6725003` |
| 7 | `instance` | [instIsDomain](../../../../../Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean/declarations/instisdomain--05c85bfab0a1e2e51c58c2ba.md) | 121 | `declaration-track:05c85bfab0a1e2e51c58c2bab68bd82660e6eec8cf70618f8e274940215edc55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36b0ec566fd414d9e024c84f6f3e475a1c188899a9a1c623e02e0874b086bec4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean","GRWTSK/_verification/specifications/Algebra/Domain/Variant25424d82ca761e1a760de95ea1321f7a0854d84df3280143e2491ec9602df3f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
