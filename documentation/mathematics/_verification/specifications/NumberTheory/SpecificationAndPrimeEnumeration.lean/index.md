# Verification target: Specification And Prime Enumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f31e3cdfc773cedf911566d9c69ce04d2eee43b3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/SpecificationAndPrimeEnumeration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/index.md) · [Full source](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f31e3cdfc773cedf911566d9c69ce04d2eee43b3`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/SpecificationAndPrimeEnumeration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/SpecificationAndPrimeEnumeration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/declarations/sequentialprimespecification.md) | 35 | `declaration-track:8fc0947ba140c34647ef3f28554018461ad38fb06fb7327a366cec34a3f688f0` |
| 2 | `def` | [rank](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/declarations/rank.md) | 44 | `declaration-track:d9e5334eff26378ab922f2d462d1bfd452e03a2e4cab6fbcbcf006a7ca1da48b` |
| 3 | `structure` | [PrimeEnumeration](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/declarations/primeenumeration.md) | 48 | `declaration-track:7faddeaa0b509cf36ed89e0124780f5082b89481ebe38b591a4dc350d3187843` |
| 4 | `def` | [canonicalPrimeEnumeration](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/declarations/canonicalprimeenumeration.md) | 59 | `declaration-track:a8f1751f90dbc7f1a8007e40c26f3bdd00e9ed73fb98a3264f1c9c71ca1ede07` |
| 5 | `theorem` | [canonicalPrimeEnumeration_value](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/declarations/canonicalprimeenumeration-value.md) | 66 | `result-track:6dd93c3dd8c17cd52777ce989ddbfe4af479f66b74b2db4794516e5d8b7cbe7d` |
| 6 | `theorem` | [canonicalPrimeEnumeration_prime](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/declarations/canonicalprimeenumeration-prime.md) | 70 | `result-track:44b45870e9c246e97348c5faf6eff3cc089ffa80f6b17ef84317ffb9631a9018` |
| 7 | `theorem` | [canonicalPrimeEnumeration_strictlyIncreasing](../../../../NumberTheory/SpecificationAndPrimeEnumeration.lean/declarations/canonicalprimeenumeration-strictlyincreasing.md) | 74 | `result-track:6462d0464e8bcbd8687de99a381f2a22c5de860f367566f1f47b8d6a14b059f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f229b36ecdbc5f5422b3a3454dbd49892dbc64bc2e64107f1867dfb90e5411c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/SpecificationAndPrimeEnumeration.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/SpecificationAndPrimeEnumeration.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
