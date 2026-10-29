# Verification target: Laurent Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909`.

Source path: `GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taylor_mem_nonZeroDivisors](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/taylor-mem-nonzerodivisors.md) | 47 | `result-track:a3c2273ee7e0b9020f7614fa6f3a896dfc6d75bd966faa053bd829f0dbd74bfa` |
| 2 | `def` | [laurentAux](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurentaux.md) | 58 | `declaration-track:855490394cb1c4e0e9d691496e033c12672d8a8ba97dfa2daac37c3dd278b419` |
| 3 | `theorem` | [laurentAux_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurentaux-offractionring-mk.md) | 68 | `result-track:ef7f56a99b474fe53340bf4569c0e378f0af97ef4a1ae8266e75765b227edc20` |
| 4 | `theorem` | [laurentAux_div](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurentaux-div.md) | 74 | `result-track:1a18e6ac7998d8ef3bc7840f3263b5f04256e1a66bee4cf5d6020cf4d94a9c07` |
| 5 | `theorem` | [laurentAux_algebraMap](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurentaux-algebramap.md) | 82 | `result-track:82a0c5e153df625588c4186201f0d3b78552c7a71ddd0578ac45c6761fd928c8` |
| 6 | `def` | [laurent](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent.md) | 88 | `declaration-track:f93f7b5a65fb088a2dfa680de18774d042c4e11666030055d228e2c4ff338fa2` |
| 7 | `theorem` | [laurent_div](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent-div.md) | 93 | `result-track:3c83a6039da9e167f34f32d21e6ef24fe1fa1a972e649c3b262afcf77caf3481` |
| 8 | `theorem` | [laurent_algebraMap](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent-algebramap.md) | 100 | `result-track:13fcd605cedd184392e548b91343616d4e2683935bcf6852f97b2168e0cf34db` |
| 9 | `theorem` | [laurent_X](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent-x.md) | 105 | `result-track:17995895e3ba349a1c9ee2a67a1d478f4424017942659b62e3503e4f222504be` |
| 10 | `theorem` | [laurent_C](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent-c.md) | 111 | `result-track:952c30c906ab90173546df75a0c0249cb351cab0a5965c8892950932132cfb65` |
| 11 | `theorem` | [laurent_at_zero](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent-at-zero.md) | 117 | `result-track:5f48b0659f6dd27080595bd474446ee34171eb1136bce556ad920091abe359bb` |
| 12 | `theorem` | [laurent_laurent](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent-laurent.md) | 120 | `result-track:1608579ede60ffefef39c5cdae3f30fd8e4f10e3b0fb53f462033b0665c81c34` |
| 13 | `theorem` | [laurent_injective](../../../../FieldTheoryAndPolynomials/LaurentNamespacedAligned.lean/declarations/laurent-injective.md) | 125 | `result-track:2f0e0d199f72da94f8638affb23f23b99f34d50fd886d28ff6bedbbf53f8a7f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b0a64f056d654114bb4c73200c6c2746d396588837105f255e61d036e4029f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean","GRWTSK/_verification/specifications/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
