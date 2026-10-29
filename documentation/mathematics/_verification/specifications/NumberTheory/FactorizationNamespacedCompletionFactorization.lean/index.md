# Verification target: Factorization Namespaced Completion Factorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe9f62330a0b58bd03f92f1227ccf569d1d8bef8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FactorizationNamespacedCompletionFactorization.lean/index.md) · [Full source](../../../../NumberTheory/FactorizationNamespacedCompletionFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe9f62330a0b58bd03f92f1227ccf569d1d8bef8`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Obstruction.MUS` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletionFactorization](../../../../NumberTheory/FactorizationNamespacedCompletionFactorization.lean/declarations/completionfactorization.md) | 25 | `declaration-track:a008ad501069fdc57ed1ee43e538e64d214bcbbbb242c78e8a0161c85b08857c` |
| 2 | `structure` | [CoprimeObstructionCertificate](../../../../NumberTheory/FactorizationNamespacedCompletionFactorization.lean/declarations/coprimeobstructioncertificate.md) | 49 | `declaration-track:d42d8834da8a9ab9670bedb98c4b6c68506829ed808c1448b276668ab7c089f6` |
| 3 | `theorem` | [coprime_core_factorization_sound](../../../../NumberTheory/FactorizationNamespacedCompletionFactorization.lean/declarations/coprime-core-factorization-sound.md) | 88 | `result-track:c541676c56a2d1b127084b0deac1177f8aeb3cab10536ab53622648782ede37b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d95df53d493ee3e872046363954b1ec1de40006165cf6949013c921ad51f90bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
