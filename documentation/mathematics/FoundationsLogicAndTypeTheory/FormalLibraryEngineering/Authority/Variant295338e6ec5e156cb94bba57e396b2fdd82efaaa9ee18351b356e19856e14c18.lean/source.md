# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d8f577bc80b07e4867b1f076c0d2eb126afd419` · SHA-256 `295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Basic

/-!
# Interpretation authority
-/

namespace Mathematics.SemanticTokenization

inductive AuthorityClass
  | humanAccepted
  | lexicallyCertified
  | corpusSupported
  | parserSupported
  | modelSuggested
  | taskAssumed
deriving DecidableEq, Repr

inductive AssertionUse
  | structural
  | lexical
  | syntactic
  | semantic
  | pragmatic
  | theoremPremise
  | candidateOnly
deriving DecidableEq, Repr

structure AuthorityPolicy where
  permits : AuthorityClass → AssertionUse → Bool
  modelCannotProve :
    permits .modelSuggested .theoremPremise = false
  parserCannotProveSemantics :
    permits .parserSupported .semantic = false
  parserCannotProveTheorems :
    permits .parserSupported .theoremPremise = false

def conservativeAuthorityPolicy : AuthorityPolicy where
  permits
    | .humanAccepted, _ => true
    | .lexicallyCertified, .lexical => true
    | .corpusSupported, .lexical => true
    | .corpusSupported, .pragmatic => true
    | .parserSupported, .structural => true
    | .parserSupported, .syntactic => true
    | .modelSuggested, .candidateOnly => true
    | .taskAssumed, .candidateOnly => true
    | _, _ => false
  modelCannotProve := rfl
  parserCannotProveSemantics := rfl
  parserCannotProveTheorems := rfl

theorem model_suggestion_not_theorem_authority
    (policy : AuthorityPolicy) :
    policy.permits .modelSuggested .theoremPremise = false :=
  policy.modelCannotProve

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e244befe949e0c43bb6ead7558236ec65ac2570e548f4684f5012c0c32883e5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
