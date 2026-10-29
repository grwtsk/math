# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Factorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44517e69ffe122af95eb5f35b9801e8e2433195b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44517e69ffe122af95eb5f35b9801e8e2433195b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Obstruction.MUS` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletionFactorization](../../../../../../NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean/declarations/completionfactorization--cc1dd236440827c90f7e3c35.md) | 17 | `declaration-track:cc1dd236440827c90f7e3c3583b95478eafd8f70e9099cb67f3bac5f991f3628` |
| 2 | `structure` | [CoprimeObstructionCertificate](../../../../../../NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean/declarations/coprimeobstructioncertificate--8ef9e7b16b60ac559d5875ab.md) | 41 | `declaration-track:8ef9e7b16b60ac559d5875ab94e1906869d4f7dcb971e05f39da250f23088640` |
| 3 | `theorem` | [coprime_core_factorization_sound](../../../../../../NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean/declarations/coprime-core-factorization-sound--3e68574f9585688c02d062ee.md) | 80 | `result-track:3e68574f9585688c02d062ee418201dd227c2d6b5bc4cf7436231dc39bbb9712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=661475d549241ee136a3ef4d8de33c6a12e6dcdcdd12df7408b60daa36ca0457 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Factorization/Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
