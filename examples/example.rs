use std::str::Chars;
pub struct Cursor<'a> {
    length: usize,
    chars: Chars<'a>,
    prev: char,
}
impl<'a> Cursor<'a> {
    pub fn new(input: &'a str) -> Cursor<'a> {
        Cursor {
            length: input.len(),
            chars: input.chars(),
            prev: EOF,
        }
    }
    pub fn eof(&self) -> bool {
        self.chars.as_str().is_empty()
    }
    pub fn prev(&self) -> char {
        self.prev
    }
    pub fn first(&self) -> char {
        self.chars.clone().next().unwrap_or(EOF)
    }
    pub fn second(&self) -> char {
        let mut iter = self.chars.clone();
        iter.next();
        iter.next().unwrap_or(EOF)
    }
    pub fn pos_within_token(&self) -> u32 {
        (self.length - self.chars.as_str().len()) as u32
    }
    pub fn reset_pos_within_token(&mut self) {
        self.length = self.chars.as_str().len();
    }
    pub fn bump(&mut self) -> Option<char> {
        let ch = self.chars.next()?;
        Some(ch)
    }
    pub fn eat_while(&mut self, mut predicate: impl FnMut(char) -> bool) {
        while predicate(self.first()) && !self.eof() {
            self.bump();
        }
    }
}

