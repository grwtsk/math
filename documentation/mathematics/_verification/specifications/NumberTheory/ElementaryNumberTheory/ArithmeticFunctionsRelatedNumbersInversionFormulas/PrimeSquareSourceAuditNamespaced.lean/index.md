# Verification target: Prime Square Source Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f22fb316265e3c42cdb9559ce61ad31009d28c7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f22fb316265e3c42cdb9559ce61ad31009d28c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.Cutoff` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimeSquare](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/isprimesquare.md) | 21 | `declaration-track:91a6fc0947fd665d77fc6b3c5fe32aa019e0f240176eed74a6acfc5541cdb223` |
| 2 | `def` | [primeSquareIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/primesquareindices.md) | 24 | `declaration-track:e25b8ae9ac02f1abe34675b72464b5858607ff99fad129cfcbf15539c95a0970` |
| 3 | `def` | [closedPrimeRoots](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/closedprimeroots.md) | 29 | `declaration-track:4802a7388da0a6fc8be56595f39ed26a0a2d9349f3828f793b73145287448c24` |
| 4 | `def` | [strictPrimeRoots](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/strictprimeroots.md) | 33 | `declaration-track:4b056ea9a01b57e9c9a18b40eaab28f0df661d4c0b158c3ff4630dcc5fdeb542` |
| 5 | `def` | [primeSquareContribution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/primesquarecontribution.md) | 37 | `declaration-track:7b2fdab1585a6f25979733687cee08695274db15f053b76b50656850bf0aa662` |
| 6 | `theorem` | [mem_closedPrimeRoots_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/mem-closedprimeroots-iff.md) | 41 | `result-track:cb6c48f3a8dfe9a35874015ba97fbf9c0814603f4ccf6b3fee5afc3ac0e3a790` |
| 7 | `theorem` | [mem_strictPrimeRoots_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/mem-strictprimeroots-iff.md) | 49 | `result-track:bd89fca7ec82d7ee65e1cd6adbf551b72707b83e15049ad4921c8f3f2e6e93e5` |
| 8 | `theorem` | [prime_square_cutoff_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/prime-square-cutoff-iff.md) | 55 | `result-track:1941934ec7ed87e27bae8dbe4ba48bc772bdb1ec476aff26fa93e7f08f3efa37` |
| 9 | `theorem` | [primeSquareIndices_eq_image](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/primesquareindices-eq-image.md) | 65 | `result-track:9944b988581468837834d7447d9d04a959c0fa707d846f74b995d42acdd34ade` |
| 10 | `theorem` | [four_mem_primeSquareIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/four-mem-primesquareindices-iff.md) | 79 | `result-track:875ede44100ae725d434bd19f5e5e7179b3d7c18efaecafee1032679b2835157` |
| 11 | `theorem` | [prime_square_summand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/prime-square-summand.md) | 91 | `result-track:89b69b29ad9b0dedb116586ea0ade1733f86337494c253f932fab58f05211514` |
| 12 | `theorem` | [primeSquareContribution_eq_strict](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/primesquarecontribution-eq-strict.md) | 102 | `result-track:9dba4bdd98bdfb66371fbbdc5bb3e0ee0b07d8816746ce2b643fb13008b93a64` |
| 13 | `theorem` | [prime_root_endpoint_summand_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/prime-root-endpoint-summand-zero.md) | 114 | `result-track:c66f8dc2a17c69fc9b5ad7be65a61027b13387a4708c7d052cb36c99c87985a9` |
| 14 | `theorem` | [primeSquareContribution_eq_closed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeSquareSourceAuditNamespaced.lean/declarations/primesquarecontribution-eq-closed.md) | 128 | `result-track:047d86e323654b98428514f07d4a33403dbed6da8cb9175f03c71cc5ef5442a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e765dc9b0f4763cf8f6c5856f3285c9f52f4d968e07bc9d6409fbe335ad17412 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
