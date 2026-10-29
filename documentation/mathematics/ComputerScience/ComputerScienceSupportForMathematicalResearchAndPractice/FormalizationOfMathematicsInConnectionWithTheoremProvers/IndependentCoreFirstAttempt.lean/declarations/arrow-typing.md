# arrow_typing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc59e2fa-1c3a-3739-791a-9fdb01c353aa",
  "kind": "theorem",
  "lexical_name": "arrow_typing",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "arrow-typing",
  "source": {
    "blob": "f06d5c7772a9e40940e303f0f187c184a751737a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2518,
    "line": 2455,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fdbb7d4df53ad9f7ea670f56df61753ce2437fb276bce526d14e079925864c6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentCoreFirstAttempt.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc59e2fa-1c3a-3739-791a-9fdb01c353aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2455–2518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arrow_typing {term : Expr Bool} :
    ∀ {context type}, HasType monomorphicArrow context term type → BaseArrowType type →
      ArrowTyping (context.map decodeArrow) term (decodeArrow type) := by
  induction term with
  | var index =>
      intro context type typed grammar
      obtain ⟨declared, lookup, conversion⟩ := typed.generation
      obtain ⟨sort, declaredTyped⟩ := lookup_sorted lookup typed.valid
      have equality := sorted_convert_to_grammar declaredTyped grammar (.symm _ _ conversion)
      subst declared
      exact .var (lookup_decoded lookup)
  | sort sort =>
      intro context type typed grammar
      obtain ⟨target, sourceAxiom, conversion⟩ := typed.generation
      have equality := grammar.normal.eq_of_converts (Normal.sort target) conversion
      have targetEquality := sourceAxiom.2
      subst target
      exact False.elim (grammar.ne_kind equality)
  | pi domain codomain ihDomain ihCodomain =>
      intro context type typed grammar
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, conversion⟩ := typed.generation_pi
      have equality := grammar.normal.eq_of_converts (Normal.sort outputSort) conversion
      have outputEquality := sourceRule.2.2
      subst outputSort
      exact False.elim (grammar.ne_kind equality)
  | lam annotation body ihAnnotation ihBody =>
      intro context type typed grammar
      obtain ⟨codomain, sort, bodyTyped, productTyped, conversion⟩ := typed.generation_lam
      obtain ⟨domainSort, codomainSort, outputSort, annotationTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have annotationGrammar := sorted_type_classification annotationTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have productGrammar : BaseArrowType (.pi annotation codomain) :=
        .arrow annotationGrammar codomainGrammar
      have equality := grammar.normal.eq_of_converts productGrammar.normal conversion
      subst type
      have simpleBody := ihBody bodyTyped codomainGrammar
      have annotationEquality := decode_expression annotation annotationGrammar
      change ArrowTyping (context.map decodeArrow) (.lam annotation body)
        (.function (decodeArrow annotation) (decodeArrow codomain))
      have result : ArrowTyping (context.map decodeArrow)
          (.lam (decodeArrow annotation).expression body)
          (.function (decodeArrow annotation) (decodeArrow codomain)) := .lam simpleBody
      simpa only [annotationEquality] using result
  | app function argument ihFunction ihArgument =>
      intro context type typed grammar
      obtain ⟨domain, codomain, functionTyped, argumentTyped, conversion⟩ := typed.generation_app
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have domainGrammar := sorted_type_classification domainTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have instantiateEquality : codomain.instantiate argument = codomain :=
        codomainGrammar.subst_eq (Expr.single argument)
      rw [instantiateEquality] at conversion
      have equality := grammar.normal.eq_of_converts codomainGrammar.normal conversion
      subst type
      exact .app (ihFunction functionTyped (.arrow domainGrammar codomainGrammar))
        (ihArgument argumentTyped domainGrammar)

/-- All actual annotated typed expressions normalize independently of result245. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentCoreFirstAttempt.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean#L2455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06d5c7772a9e40940e303f0f187c184a751737a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75b309977f884252c4dbc8c28ebe0aa8c0bc6f3a2288aed8f49aa81ff1b6bbc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
