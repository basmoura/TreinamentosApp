//
//  ListaInstrutoresViewController.m
//  TreinaMobi
//
//  Created by Breno A. S. Moura on 8/10/13.
//  Copyright (c) 2013 Popcode Mobile Solutions. All rights reserved.
//

#import "ListaInstrutoresViewController.h"
#import "InstrutoresViewController.h"

@interface ListaInstrutoresViewController ()

@property (strong, nonatomic) NSArray *arrayDeSessoes;
@property (strong, nonatomic) NSArray *arrayDeInstrutores;
@end

@implementation ListaInstrutoresViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"111-user"];
        self.tabBarItem.title = @"Instrutores";
        self.navigationItem.title = @"Instrutores";
        
//        UIButton *meuBotao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [meuBotao setTitle:@"Detalhe" forState:UIControlStateNormal];
//        [meuBotao addTarget:self action:@selector(detalheInstrutor) forControlEvents:UIControlEventTouchUpInside];
//        meuBotao.frame = CGRectMake(0, 80, 150, 30);
//        [self.view addSubview:meuBotao];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.arrayDeSessoes = @[@"Andoid", @"iOS", @"Web", @"Games", @"Linux"];
    
    NSDictionary *mateus = @{@"nome": @"Mateus Lima", @"curso": @"Python e Django", @"descricao": @"Desenvolvedor web desde os 15 anos, respira Python, Ruby, web e open source em geral. Possui contribuições em projetos open source diversos, como: django-fukinbook, gitignore, Usina, django-template, django-ios, etc. Palestrante sobre diversos temas ligados a Python e Django, membro ativo das comunidades Django-BR e Python-BR, também escreve no blog Python Sergipe.", @"foto": @"http://treinamentos.mobi/media/person/photo/381723_255545367843456_1031721981_n.jpg.270x270_q85_crop.jpg", @"fb": @"https://www.facebook.com/MatheeusLimaaa", @"tw": @"https://twitter.com/matheeusLimaaa", @"lk": @"http://br.linkedin.com/in/matheussl"};
    NSDictionary *hugo = @{@"nome": @"Hugo Doria", @"curso": @"Desenvolvimento iOS", @"descricao": @"DevOP, baixista e pai. Possui grande experiência com desenvolvimento (mobile e de infra-estrutura), administração de sistemas Linux e video-games. Sócio-fundador da Popcode Mobile Solutions e criador de diversos aplicativos. Numa vida passada, foi desenvolvedor do Arch Linux e membro ativo de vários projetos opensource como, por exemplo, HnTool e GNOME.", @"foto": @"http://treinamentos.mobi/media/person/photo/09a1da01a41c39dd10b39b0892556a73.jpeg.270x270_q85_crop.jpg", @"fb": @"https://www.facebook.com/hugodorian", @"tw": @"http://twitter.com/hdoria", @"lk": @"http://br.linkedin.com/in/hdoria"};
    NSDictionary *alercio = @{@"nome": @"Alércio Bressano", @"curso": @"Metodologias Ágeis", @"descricao": @"Alércio Bressano é Gerente de Projetos, Consultor, Professor Universitário e Mentor em Produtividade Pessoal. Possui 13 anos de experiência com projetos de TI, sendo 8 destes anos dedicados à liderança de equipes e gerenciamento de projetos. É Certified SCRUM Master, Certified Product Owner e Certified Scrum Professional, certificado PMP e especialista em Gestão Empresarial pela Fundação Getúlio Vargas (FGV-RJ).", @"foto": @"http://treinamentos.mobi/media/person/photo/3faaeee09d8c4547b0461ff8d92d3af2.png.270x270_q85_crop.png", @"fb": @"https://www.facebook.com/alercio", @"tw": @"http://twitter.com/alercio", @"lk": @"http://www.linkedin.com/in/alercio"};
    
    self.arrayDeInstrutores = @[mateus, hugo, alercio];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return self.arrayDeSessoes.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSDictionary *instrutor = self.arrayDeInstrutores[indexPath.row];
    
    cell.textLabel.text = instrutor[@"nome"];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/
#pragma mark - Meus métodos

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *titulo = [UILabel new];
    
    titulo.text = self.arrayDeSessoes[section];
    titulo.backgroundColor = [UIColor lightGrayColor];

    return  titulo;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
    //DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"Nib name" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    NSDictionary *instrutor = self.arrayDeInstrutores[indexPath.row];
    
    InstrutoresViewController *instrutorVC = [[InstrutoresViewController alloc] initWithInstrutor:instrutor];
    [self.navigationController pushViewController:instrutorVC animated:YES];
}

@end
