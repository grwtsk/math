# Verification target: Sum Prod Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ba629340feca23aeeee339d3eb62fbf268bd0d5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SumProd/Variant30a83ece6c863040ac772f2535f92c2774c7d31ff5db172a3eca9480959167ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ba629340feca23aeeee339d3eb62fbf268bd0d5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SumProd/Variant30a83ece6c863040ac772f2535f92c2774c7d31ff5db172a3eca9480959167ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SumProd/Variant30a83ece6c863040ac772f2535f92c2774c7d31ff5db172a3eca9480959167ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumFinsuppLEquivProdFinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/sumfinsupplequivprodfinsupp.md) | 42 | `declaration-track:24f680dfc17f17de8464ccad6fd3d77e28b05ce7cd12d3a57da709c2503af4f2` |
| 2 | `theorem` | [fst_sumFinsuppLEquivProdFinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/fst-sumfinsupplequivprodfinsupp.md) | 51 | `result-track:0a7a3e59bc8b031575bd4aadf6b640de5e79ace4da3399676fdd9ae58bf27319` |
| 3 | `theorem` | [snd_sumFinsuppLEquivProdFinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/snd-sumfinsupplequivprodfinsupp.md) | 55 | `result-track:ca91b3235835a5098f8f31d7a075c4141d6bbd54920b8696462b255476e155cb` |
| 4 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/sumfinsupplequivprodfinsupp-symm-inl.md) | 59 | `result-track:c1de5bab8933162909d39d73bb298fb38fd450105edc6e9b2e1acaef52cad212` |
| 5 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/sumfinsupplequivprodfinsupp-symm-inr.md) | 63 | `result-track:9e0dbee2d981c978ee9d0aa49fb188216d870ddfe117cb8100cfbe7f48e9fa90` |
| 6 | `def` | [sigmaFinsuppLEquivPiFinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/sigmafinsupplequivpifinsupp.md) | 78 | `declaration-track:957cdf4982a907bcc898d67b14e2a4d4579e078d578c01659e023ec062c2ce86` |
| 7 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/sigmafinsupplequivpifinsupp-apply.md) | 86 | `result-track:9218412c772ba15afb41337a20295ee4cb0ad04f0f7311882c88efd1fa11a95a` |
| 8 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SumProdPublic.lean/declarations/sigmafinsupplequivpifinsupp-symm-apply.md) | 91 | `result-track:d3881ed16d548e56a3160e0ca0a4b6ac4d33881fafab34f5214ddc631523143b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45fe101ccb30a50d43f8934e5d31d9d001e657941b73a75c3dbf801fdb1eab72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SumProd/Variant30a83ece6c863040ac772f2535f92c2774c7d31ff5db172a3eca9480959167ec.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SumProd/Variant30a83ece6c863040ac772f2535f92c2774c7d31ff5db172a3eca9480959167ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
