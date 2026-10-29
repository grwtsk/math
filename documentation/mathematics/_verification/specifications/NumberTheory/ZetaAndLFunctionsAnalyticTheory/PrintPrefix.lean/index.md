# Verification target: Print Prefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b9e79e54a9843633f3a2d44a795ead08ed0d478",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrintPrefix.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrintPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b9e79e54a9843633f3a2d44a795ead08ed0d478`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PrintPrefix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TEmpty](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrintPrefix.lean/declarations/tempty.md) | 3 | `declaration-track:584558ec4ab6c8fda6fc457bb25c339b6c275bd267e47b56f5acb7bea6fdbfd3` |
| 2 | `def` | [foo](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrintPrefix.lean/declarations/foo.md) | 34 | `declaration-track:d7e1fc4a0b67015180fc8324362befc8c709602c9bbe1962abc492ce0f3649d5` |
| 3 | `structure` | [TestStruct](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrintPrefix.lean/declarations/teststruct.md) | 43 | `declaration-track:05ccf5042e160e264ce4d341e727451151b0e82510c3fd83c9482f111195db3c` |
| 4 | `def` | [testMatchProof](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrintPrefix.lean/declarations/testmatchproof.md) | 131 | `declaration-track:7c7951fa2021c7a79f4dd45eb41c409e59fc9fea533ee9417aeb9188813692c0` |
| 5 | `inductive` | [TestInd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrintPrefix.lean/declarations/testind.md) | 152 | `declaration-track:63be6567f68ab1eacef171b44c82a8da19347ccf9da74077f43332a4d0333111` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a307a31d4257cbbf4825031b51f32f583d96768fc9a2609e6a30cde50833dc45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
