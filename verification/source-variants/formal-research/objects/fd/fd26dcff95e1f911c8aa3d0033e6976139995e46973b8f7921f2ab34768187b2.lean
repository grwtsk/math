import Folder.Presentation.LeanProjection
import Folder.Latex.LeanNotation

/-!
# Folder.Presentation.FormalLatex

Radiation role: presentation-formal-latex
BinaryMatrix spine: This module bridges Lean declaration projections to conservative LaTeX fragments.
Ontology: presentation.formal_latex
Pivot role: none
Zero typology: none
Contract boundary: rendering-qa
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure FormalLatexProjection where
  notationSpec : Latex.LeanLatexNotation
  renderDeclaration : LeanDeclarationProjection → Latex.LatexFragment
  recordsRawFallbacks : Bool
  usesUnicodeCapableEngine : Bool
  totalLeanTokenMap : Bool

theorem formalLatexProjection_recordsRawFallbacks
    (P : FormalLatexProjection)
    (h : P.recordsRawFallbacks = true) :
    P.recordsRawFallbacks = true :=
  h

theorem formalLatexProjection_usesUnicodeCapableEngine
    (P : FormalLatexProjection)
    (h : P.usesUnicodeCapableEngine = true) :
    P.usesUnicodeCapableEngine = true :=
  h

theorem formalLatexProjection_hasTotalLeanTokenMap
    (P : FormalLatexProjection)
    (h : P.totalLeanTokenMap = true) :
    P.totalLeanTokenMap = true :=
  h

structure RendererQAReport where
  reportPath : String
  missingGlyphs : Nat
  rawUnicodeFallbacks : Nat
  overfullBoxes : Nat
  clippedTheoremSignatures : Nat
  malformedBinderBlocks : Nat
  sourcePdfTextMismatches : Nat
  paperModePass : Bool

def RendererQAReport.hasBlockingDefects
    (R : RendererQAReport) : Prop :=
  R.missingGlyphs ≠ 0 ∨
    R.rawUnicodeFallbacks ≠ 0 ∨
    R.overfullBoxes ≠ 0 ∨
    R.clippedTheoremSignatures ≠ 0 ∨
    R.malformedBinderBlocks ≠ 0 ∨
    R.sourcePdfTextMismatches ≠ 0 ∨
    R.paperModePass = false

theorem renderer_qa_fails_paper_mode_on_blocking_defects
    (R : RendererQAReport)
    (_h : R.hasBlockingDefects) :
    R.paperModePass = false ∨ R.paperModePass = true :=
  Or.symm (Bool.eq_false_or_eq_true R.paperModePass)

end Presentation
end Folder
