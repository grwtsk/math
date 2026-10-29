# Verification target: Matrix Reducer IREdition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f592eea0b22a2661b0479ee0f0b2bade57730d9c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f592eea0b22a2661b0479ee0f0b2bade57730d9c`.

Source path: `GRWTSK/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.ReducerIR` — import line 1; external provider; requires a separately pinned dependency.
- `FilesystemCodec.FieldRows` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rep](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/rep.md) | 29 | `declaration-track:7156210bfee3ab1f1f0929f816b4625fae9f658fc3de0ab87ba6687e1a946f00` |
| 2 | `def` | [Rep.ofRuntime](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/rep-ofruntime.md) | 41 | `declaration-track:5cbafec7fc5b9e9ab6999b5010a08def39bd8cf783e1c93b269eaf1f077e7d48` |
| 3 | `def` | [Rep.Denote](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/rep-denote.md) | 47 | `declaration-track:dcbdf627bbf00b10695fe9b59a54889e50f13409ebb8554ae47779e272bc9633` |
| 4 | `inductive` | [ReducerIR](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/reducerir.md) | 59 | `declaration-track:027e5eb388b963c76921fbb20cc11e57d688768d6f033d4787d5549c6f06478d` |
| 5 | `def` | [xorFamily](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/xorfamily.md) | 93 | `declaration-track:2d87c6284873a5c928d46fccffd64d67fbec1d30c13b2b7f67377ef3d2703d02` |
| 6 | `def` | [eval](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/eval.md) | 97 | `declaration-track:09c3dde0d2496aaf87dcbe90278eeb8ab17d6a67612981a89d89c4e71fb02bc4` |
| 7 | `theorem` | [eval_identity](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/eval-identity.md) | 128 | `result-track:fa0561ba87f36a4862798a7c4ed7e67e378ef692a3349424804cb371e740d569` |
| 8 | `theorem` | [eval_compose](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/eval-compose.md) | 133 | `result-track:0a0a3e1ad7b57dcfc870588a7d2bf896cd1666b8a51dbfbb4ee95ad1fcaf1887` |
| 9 | `def` | [describe](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/describe.md) | 141 | `declaration-track:f68c552c060c480ee0b1146399bd90db197c0c53c0baac05a219069af2ab54db` |
| 10 | `def` | [ofRuntime](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/ofruntime.md) | 168 | `declaration-track:6007cb83cce06ca06b636c01700c925379a2179379c031d9004a7e44469669e4` |
| 11 | `structure` | [CertifiedReducerIR](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/certifiedreducerir.md) | 194 | `declaration-track:f167da8b13edb6f1ede87c57e4b67364c870de3c8d74f7fb840428f6f61305aa` |
| 12 | `def` | [toObserverReducer](../../../../AssociativeRingsAndAlgebras/MatrixReducerIREdition2.lean/declarations/toobserverreducer.md) | 213 | `declaration-track:aee1b7c8bb12e0f95cb9ca57b151cdd966294bfb4fc5b7626452f3f6a18f7dfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1dfd91ce08037934d20a4df34c609f8ef0694e7633d5b4451bd4da5bf234424c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean","GRWTSK/_verification/specifications/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
