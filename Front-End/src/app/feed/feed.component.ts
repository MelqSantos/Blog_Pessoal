import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-feed',
  templateUrl: './feed.component.html',
  styleUrls: ['./feed.component.css']
})
export class FeedComponent implements OnInit {

  constructor() { }

  // // Função para mostrar os botões de editar postagem
  // alterar():void {
  //   let opcoes : HTMLElement = document.querySelector('.post-opcoes') as HTMLElement;
  //   let img : HTMLElement = document.querySelector('.post-content') as HTMLElement;
    
  //       opcoes.classList.add('editar-ativo')
  //       img.style.filter = 'blur(2px)'

  //       img.addEventListener('mouseout', function(){
  //         opcoes.classList.remove('editar-ativo');
  //         img.style.filter = 'blur(0)'
  //       })
  // }

  ngOnInit(): void {
  }
  
}
